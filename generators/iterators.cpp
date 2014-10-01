/** @file iterators.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  Some test code to demonstrate how (at least g++) implements range based for
 *  loops in C++
 */

#include <iostream>

/** 'Iterator' for fib class.  The constructor announces itself to `cout`. */
class fibit {
public:
	fibit(const int _left, const int _a, const int _b) : left{_left}, a{_a}, b{_b}
	{
		std::cout << "fibit(" << left <<"," << a << "," << b <<")\n";
	}
	bool operator!=(const fibit &rhs) { return left != rhs.left; }
	fibit& operator++() { --left; int olda=a; a=b; b+=olda; return *this; }
	/** Return the next item in the sequence.
	 *
	 *  For an integer, as here, return by value would be fine.
	 *  But this shows that we can form a constant reference to be returned:
	 *  this would make sense if the returned type was very complex-- so we want
	 *  a reference to avoid an expensive copy, but this isn't a real "container"
	 *  so we don't want to let the client code modify the value.
	 *  Then code like `for (auto& x:...)` will make `x` automatically `const`
	 *  as we hope, and issue a compiler error if we try to change `x`.
	 */
	//const int& operator*() { return b; }
	int operator*() { return b; }
private:
	int left, a, b;
};

/** Simple 'container' style class which calls `fibit` to do the hard work. */
class fib {
public:
	fib(const int length) : len{length}
	{
		std::cout << "Calling fib() init.\n";
	}
	fibit begin()const { return fibit(len,0,1); }
	fibit end()const { return fibit(0,0,1); }
	fibit cbegin()const { return fibit(len,0,1); std::cout << "fib::cbegin() called." << std::endl; }
	fibit cend()const { return fibit(0,0,1); }
private:
	int len;
};

/** Faster version of `fib()` which caches the iterators. */
class fib1 {
public:
	fib1(const int length) : ourstart(length,0,1), ourend(0,0,1)
	{
		std::cout << "Calling fib() init.\n";
	}
	fibit begin()const { return ourstart; }
	fibit end()const { return ourend; }
private:
	fibit ourstart, ourend;
};

/** Test various usage cases, and study the output. */
int main()
{
	// Print out the first 10 terms of the Fibonacci sequence
	for (const auto& x : fib(10)) {
		std::cout << x << ", ";
	}
	std::cout << std::endl;

	// Version which forces const.  Notice we don't need cbegin() etc.
	// and it isn't used.
	{
	const auto &ff = fib(10);
	for (auto& x : ff) {
		std::cout << x << ", ";
		//++x; // Won't compile, as x is const
	}
	std::cout << std::endl;
	}	

	// Above for line is equivalent to (watch ordering in output):
	auto temp = fib(10);
	auto it = temp.begin();
	auto ee = temp.end();
	for (; it!=ee; ++it) {
		auto x = *it; std::cout << x << ", ";
	}
	std::cout << std::endl;
	// Would usually write the following, which given my implementation of fib is inefficient
	auto f = fib(10);
	for (auto it = f.begin(); it != f.end(); ++it) {
		std::cout << *it << ", ";
	}
	std::cout << std::endl;


	for (auto x : fib1(10)) {
		std::cout << x << ", ";
	}
	std::cout << std::endl;

	auto ff = fib1(10);
	for (auto it = ff.begin(); it != ff.end(); ++it) {
		std::cout << *it << ", ";
	}
	std::cout << std::endl;
}
