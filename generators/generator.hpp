/** @file generator.hpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  A class which simulates the Python "generator" model.
 *
 *  That is, we'd like to write a very simple class which would allow us to write
 *  something like:
 *
 *      fib f{10}; // Generate first 10 numbers in Fibonacci sequence
 *
 *      for (auto x:f) { cout << x << endl; }
 *
 *  Also allow using standard algorithms:
 *
 *      fib f{30}
 *      auto sum = std::accumulate(f.begin(), f.end(), 0)
 */

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

