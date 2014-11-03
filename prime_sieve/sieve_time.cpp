/** @file: sieve_time.cpp
 *  @author: Matthew Daws
 *
 *  Some Prime Sieve (aka Sieve of Eratosthenes) code.
 *  Various timings code, pulled into separate file to avoid too much optimisation.
 */

#include "sieve_time.h"

std::vector<unsigned int> dotime1(unsigned int size)
{
	return prime_list<unsigned int>(size);
}

std::vector<unsigned int> dotime2(unsigned int size)
{
	return prime_list1<unsigned int>(size);
}

std::vector<unsigned int> dotime3(unsigned int size)
{
	return prime_list2<unsigned int>(size);
}

std::vector<unsigned int> dotime4(unsigned int size, unsigned int stripe)
{
	return prime_list2<unsigned int>(size,stripe);
}

std::vector<unsigned int> dotime5(unsigned int size, unsigned int stripe)
{
	return prime_list3<unsigned int>(size,stripe);
}

/** Use class sieve_stripe<T> for computing whole prime list */
std::vector<unsigned int> dotime6(unsigned int size, unsigned int stripe)
{
	sieve_stripe<unsigned int> ss(size);
	for (unsigned int n=0; n<=size; n+=stripe) {
		ss.compute_section(n, n+stripe-1);
	}
	return ss.prime_list();
}

/** Use class sieve_stripe<T> to compute just the sieve */
std::vector<bool> dotime6a(unsigned int size, unsigned int stripe)
{
	sieve_stripe<unsigned int> ss(size);
	for (unsigned int n=0; n<=size; n+=stripe) {
		ss.compute_section(n, n+stripe-1);
	}
	return ss.sieve;
}

/** Just use the original class sieve<T> to find the sieve; compare to dotime6a */
std::vector<bool> dotime6b(unsigned int size)
{
	sieve<unsigned int> ss(size);
	return ss.get_sieve();
}

// ----------------------------------------------------------------------------
// Try to use multi-threading
// ----------------------------------------------------------------------------

#include <future>
#include <thread>

// Two-threaded version of dotime6a()
std::vector<bool> dotime7(unsigned int size, unsigned int ssize, bool usethreads)
{
	using T = unsigned int;
	sieve_stripe<unsigned int> ss(size);
	// Want `stripe` to be as close to ssize=512000 as possible, so as to allow blocks of size
	// `stripe`, then a middle block of 100 (to avoid concurreny issues, I hope)
	// and then more blocks.  Should be `nums` blocks.
	T M = (size / 2);
	if ( M < 50 ) { M=0; } else { M -= 50; }
	T nums = 1 + (M / (1+ssize));
	T stripe = M / nums;
	//cout << "size=" << size << "  M=" << M << "  stripe = " << stripe << "  nums = " << nums << endl;

	if ( stripe==0 ) {
		sieve<unsigned int> s1(size);
		return s1.get_sieve();
	}

	/*cout << "one calls:" << endl;
	for (int n=0; n<nums; ++n) {
		cout << "   [" << n*stripe << " -- " <<  n*stripe + stripe - 1 << "]"<<endl;
	}
	cout << "two calls:" << endl;
	for (int n=0; n<nums; ++n) {
		cout << "   [" << size/2 + 51 + n*(stripe+1) << " -- " <<  size/2 + 51 + n*(stripe+1) + stripe << "]"<<endl;
	}
	cout << "three calls: " << endl;
	cout << "   [" << nums*stripe << " -- " <<  size/2 + 50 << "]" << endl;
	*/

	auto one = [&ss,nums,stripe]() {
		for (int n=0; n<nums; ++n) {
			ss.compute_section(n*stripe, n*stripe + stripe - 1);
		}
	};
	auto two = [&ss,nums,stripe,size]() {
		for (int n=0; n<nums; ++n) {
			ss.compute_section(size/2 + 51 + n*(stripe+1), size/2 + 51 + n*(stripe+1) + stripe);
		}
	};
	// Small middle section to avoid concurrent access issues.
	auto three = [&ss,nums,stripe,size]() {
		ss.compute_section(nums*stripe, size/2 + 50);
	};

	// Now start a separate thread, if requested, or just run in order otherwise
	std::future<void> result(std::async(
		usethreads ? std::launch::async : std::launch::deferred,
		two));
	one();
	result.get();
	three();

	return ss.sieve;
}

std::vector<bool> dotime7(unsigned int size, bool usethreads)
{
	return dotime7(size,512000,usethreads);
}

/** Compare output of dotime7() with class sieve */
bool test_dotime7()
{
	for (int n=10; n<=10000; ++n) {
		sieve<unsigned int> s1(n);
		auto s2 = dotime7(n,true);
		if ( s1.get_sieve() != s2 ) {
			cout << "test_dotime7() : fail, n=" << n << endl;
			return false;
		}
	}
	return true;
}

/** Compare dotime7() with dotime6a() */
bool test_dotime6a7()
{
	for (int n=10; n<=10000; ++n) {
		if ( dotime6a(n,1000) != dotime7(n,true) ) {
			cout << "test_dotime6a7() : fail, n=" << n << endl;
			return false;
		}
	}
	return true;
}
