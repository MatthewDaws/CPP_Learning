/** @file generator.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  Test file for template definitions in generator.hpp
 */

#include <numeric>
#include <iostream>
using std::cout; using std::endl;

#include "generator.hpp"

/** Generate fibonacci numbers */
class fib : public generator<const int> {
public:
	fib(const int len) : generator{len} { reset(); }
	void reset() { a=0; b=1; }
	const int * next() { int c=a; a+=b; b=c; return &a; }
private:
	int a,b;
};

/** Generator for Collatz conjecture */
class collatz : public generator<const unsigned long long> {
public:
	/** Minor hack: `next()` must return the 1st item... */
	collatz(const unsigned long long start) : generator{1000000}, state{2*start} {}
	const unsigned long long * next()
	{
		if ( (state&1)==0 ) { state/=2; }
		else { state = 1 + 3*state; }
		return &state;
	}
private:
	unsigned long long state;
};

int fibsum(int n)
{
	fib f{n};
	return std::accumulate(f.begin(), f.end(), 0);
}

int main()
{
	cout << "First 20 Fibonacci numbers: ";
	fib f{20};
	for (auto x : f) { cout << x << ","; }
	cout << endl;
	
	f = fib(20);
	cout << "Sum: " << std::accumulate(f.begin(), f.end(), 0) << endl;
	
	cout << endl << "Collatz sequences: " << endl;
	collatz cz{49152};
	for (auto it = cz.begin(); ; ) {
		cout << *it << ",";
		if ( *it==1 ) { break; }
		++it;
	}
	cout << endl;
}