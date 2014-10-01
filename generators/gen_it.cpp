/** @file gen_it.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  Second attempt at writing a class which simulates the Python "generator" model.
 *  This version should correspond to a correctly written STL iterator.
 *  Also is written as a template.
 *
 *  We store the current state as a pointer which avoids any copying
 *  or moving of expensive objects (e.g. strings).  Furthermore, in the template
 *  instantiation, we can use a `const` type, and then the resulting iterator is also
 *  of constant type (which probably makes sense, given the likely applications of this).
 *  
 *  That is, we'd like to write a very simple class which would allow us to write
 *  something like:
 *
 *      fib f{10}; // Generate first 10 numbers in Fibonacci sequence
 *
 *      for (auto x:f) { cout << x << endl; }
 */

#include <iostream>
using std::cout; using std::endl;

#include <iterator>

// Forward definition as cyclic dependancy
template <typename T>
class generator;

/** 'Iterator' associated with ABC generator.
 * Minimally implements *it, ++it and !=
 */
template <typename T>
class generatoriter
   : public std::iterator <std::input_iterator_tag, int>
{
public:
	/** Default constructor.
	 * Produces a sentinel to mark end of iteration.
	 * Should never have ++it applied (will dereference nullptr).
	 */
	generatoriter() : remaining{0}, ourgen{nullptr} {}
	generatoriter(const int len, generator<T> *gen);
	generatoriter& operator++();
	/** Returns cached item. */
	inline T & operator*() { return *item; }
	inline T * operator->() { return item; }
	/** Checks not equality-- compares `remaining` items left */
	inline bool operator!=(const generatoriter &rhs) { return remaining != rhs.remaining; }
private:
	int remaining;
	generator<T> *ourgen;
	T * item;
};

/** Abstract base class to support range based for loops. */
template <typename T>
class generator {
public:
	/** @param len length of iteration */
	generator(const int len) : length{len} {};
   /** pure virtual function to be overloaded.
    *  Returns next item in sequence.
    */
	virtual T * next()=0; // To be overloaded to do work
   /** Optional function to overload: resets sequence (if possible)
    *  if begin() is called again.
    */
	virtual void reset() {} // Optional overload to reset
	generatoriter<T> begin();
	/** Returns the end iterator (always just a cached sentinel.) */
	inline const generatoriter<T>& end()const { return e; }
private:
	int length;
	generatoriter<T> e; // Cache end value (default constructor makes it a sentinel)
};

/** Returns the start iterator.
 *  Calls reset() and then returns an iterator.
 */
template <typename T>
generatoriter<T> generator<T>::begin()
{
	reset();
	return generatoriter<T>(length,this);
}

/** Main constructor.
 *  @param len number of iteration items (hack: negative will iterate forever)
 *  @param gen pointer to home ABC generator used to obtain items via gen->next()
 */
template <typename T>
generatoriter<T>::generatoriter(const int len, generator<T> *gen)
	: remaining{len}, ourgen{gen}
{
	item = ourgen->next();
}

/** Advance iterator.
 *  Decreases `remaining` count and gets next item
 */
template <typename T>
generatoriter<T>& generatoriter<T>::operator++()
{
	remaining--; item = ourgen->next();
}


/** Test class to generate the fibonacci sequence
 *
 *  Model is to import `generator` as a public base class, and then overload
 *  `next()` to return the next item in the sequence.
 *  We also overload the optional `reset()` to start again, and hence call this
 *  from the constructor.
 */
 
class fib : public generator<const int> {
public:
	fib(const int len) : generator{len} { reset(); }
	/** Restart the sequence: `a=0; b=1;` */
	void reset() { a=0; b=1; }
	/** Return next item in sequence. */
	int const* next() { int c = a; a = b; b += c; return &a; }
private:
	int a,b;
};


/** Test class to show how this implementation minimises copying.
 */
 
class loud_int {
public:
   loud_int(const int val);
	loud_int(const loud_int& i);
	loud_int& operator=(const loud_int& i);
	loud_int(loud_int &&i);
	loud_int& operator=(loud_int&& i);
   ~loud_int();
   int value()const { return x; }
private:
	int x;
};

/** Constructor */
loud_int::loud_int(const int val) : x{val}
{
	cout << "loud_int <"<<this<<"> constructed with value " << x << endl;
}

/** Copy constructor */
loud_int::loud_int(const loud_int& i) : x{i.x}
{
	cout << "loud_int <"<<this<<"> <-- <"<<(&i)<<"> copy constructor with value " << x << endl;
}

/** Copy assignment */
loud_int& loud_int::operator=(const loud_int& i)
{
	x = i.x;
	cout << "loud_int <"<<this<<"> <-- <"<<(&i)<<"> copy assignment with value " << x << endl;
	return *this;
}

/** Move constructor */
loud_int::loud_int(loud_int &&i) : x{i.x}
{
	cout << "loud_int <"<<this<<"> <-- <"<<(&i)<<"> copy constructor with value " << x << endl;
}

/** Move assignment */
loud_int& loud_int::operator=(loud_int&& i)
{
	x = i.x;
	cout << "loud_int <"<<this<<"> <-- <"<<(&i)<<"> move assignment with value " << x << endl;
	return *this;
}

/** Destructor */
loud_int::~loud_int()
{
	cout << "loud_int <"<<this<<"> destructor." << endl;
}

class loud_fib : public generator<const loud_int> {
public:
	loud_fib(const int len) : generator{len}, val{0} { reset(); }
	/** Restart the sequence: `a=0; b=1;` */
	void reset() { a=0; b=1; }
	/** Return next item in sequence. */
	loud_int * next() { int c = a; a = b; b += c; val = loud_int(a); 
	cout << "  loud_fib::next() about to return..." << endl;
	return &val; }
private:
	int a,b;
	loud_int val;
};


#include <numeric>

/** Print out first 10 terms of Fibonacci sequence.
 *  Test range based for loop, and standard hand-coded iteration.
 */
int main()
{
	loud_fib f(10);
	
	//for (const auto &x:f) { cout << x.value() << endl; }
	
	for (auto it = f.begin(); it != f.end(); ++it) {
		cout << it->value() << endl;
		//*it = loud_int(5);
	}

	fib ff(30);
	cout << "Sum of first 30 terms: " << std::accumulate(ff.begin(),ff.end(),0) << endl;

	return 0;
}
