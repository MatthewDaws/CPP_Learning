/** @file gen.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  First attempt at writing a class which simulates the Python "generator" model.
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

// Forward definition as cyclic dependancy
class generator;

/** 'Iterator' associated with ABC generator.
 * Minimally implements *it, ++it and !=
 */
class generatoriter {
public:
	/** Default constructor.
	 * Produces a sentinel to mark end of iteration.
	 * Should never have ++it applied (will deference nullptr).
	 */
	generatoriter() : remaining{0}, ourgen{nullptr} {}
	generatoriter(const int len, generator *gen);
	generatoriter& operator++();
	/** Returns cached item. */
	inline int operator*() { return item; }
	/** Checks not equality-- compares `remaining` items left */
	inline bool operator!=(const generatoriter &rhs) { return remaining != rhs.remaining; }
private:
	int remaining;
	generator *ourgen;
	int item;
};

/** Abstract base class to support range based for loops. */
class generator {
public:
	/** @param len length of iteration */
	generator(const int len) : length{len} {};
   /** pure virtual function to be overloaded.
    *  Returns next item in sequence.
    */
	virtual int next()=0; // To be overloaded to do work
   /** Optional function to overload: resets sequence (if possible)
    *  if begin() is called again.
    */
	virtual void reset() {} // Optional overload to reset
	generatoriter begin();
	/** Returns the end iterator (always just a cached sentinel.) */
	inline const generatoriter& end()const { return e; }
private:
	int length;
	generatoriter e; // Cache end value (default constructor makes it a sentinel)
};

/** Returns the start iterator.
 *  Calls reset() and then returns an iterator.
 */
generatoriter generator::begin()
{
	reset();
	return generatoriter(length,this);
}

/** Main constructor.
 *  @param len number of iteration items (hack: negative will iterate forever)
 *  @param gen pointer to home ABC generator used to obtain items via gen->next()
 */
generatoriter::generatoriter(const int len, generator *gen)
	: remaining{len}, ourgen{gen}
{
	item = ourgen->next();
}

/** Advance iterator.
 *  Decreases `remaining` count and gets next item
 */
generatoriter& generatoriter::operator++()
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
 
class fib : public generator {
public:
	fib(const int len) : generator{len} { reset(); }
	/** Restart the sequence: `a=0; b=1;` */
	void reset() { a=0; b=1; }
	/** Return next item in sequence. */
	int next() { int c = a; a = b; b += c; return a; }
private:
	int a,b;
};


/** Print out first 10 terms of Fibonacci sequence.
 *  Test range based for loop, and standard hand-coded iteration.
 */
int main()
{
	fib f(10);
	
	for (auto x:f) { cout << x << endl; }
	
	for (auto it = f.begin(); it != f.end(); ++it) {
		cout << *it << endl;
	}
	
	return 0;
}
