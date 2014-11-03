/** @file: sieve.cpp
 *  @author: Matthew Daws
 *
 *  Some Prime Sieve (aka Sieve of Eratosthenes) code.
 *  This is unit test code.
 */

#include "sieve.tpp"

#include <iostream>
using std::cout;
using std::endl;

/** Tests that prime_list returns correctly */
bool is_prime_slow_test(unsigned int p)
{
	if ( p==2 ) { return true; }
	if ( (p%2)==0 ) { return false; }
	unsigned int lim = sqrt(p);
	if ( lim*lim < p ) { ++lim; }
	for (int q=3; q<=lim; q+=2) {
		if ( (p%q)==0 ) { return false; }
	}
	return true;
}

bool test1()
{
	for (int len=2; len<=10000; ++len) {
		// Manually create prime list
		std::vector<int> reallist;
		for (int p=2; p<=len; ++p) {
			if ( is_prime_slow_test(p) ) { reallist.push_back(p); }
		}
		// Test
		auto plist = prime_list(len);
		if ( plist != reallist ) {
			cout << "test1 fail: len=" << len << endl;
			cout << "list should be: ";
			for (auto x : reallist) { cout << x << ", "; }
			cout << endl;
			return false;
		}
	}
	return true;
}

/** Tests that prime_list and prime_list1 return the same lists */
bool test2()
{
	for (int len=2; len<=10000; ++len) {
		auto plist = prime_list(len);
		auto plist1 = prime_list1(len);
		if ( plist != plist1 ) {
			cout << "test2 fail: len=" << len << endl;
			return false;
		}
	}
	return true;
}

/** Tests that prime_list and prime_list2 return the same lists */
bool test3()
{
	for (int len=2; len<=10000; ++len) {
		auto plist = prime_list(len);
		auto plist2 = prime_list2(len);
		if ( plist != plist2 ) {
			cout << "test3 fail: len=" << len << endl;
			return false;
		}
	}
	return true;
}

/** Tests that prime_list and prime_list2(...,stripe_size) return the same lists */
bool test4()
{
	for (int len=2; len<=10000; ++len) {
		auto plist = prime_list(len);
		auto plist2 = prime_list2(len,100);
		if ( plist != plist2 ) {
			cout << "test4 fail: len=" << len << endl;
			return false;
		}
	}
	return true;
}

/** Tests that prime_list and prime_list3 return the same lists */
bool test5()
{
	for (int len=2; len<=10000; ++len) {
		auto plist = prime_list(len);
		auto plist2 = prime_list3(len,100);
		if ( plist != plist2 ) {
			cout << "test5 fail: len=" << len << endl;
			return false;
		}
	}
	return true;
}

/** Tests that prime_list and class sieve_stripe return the same lists */
bool test6()
{
	for (int len=100; len<=10000; ++len) {
		auto plist = prime_list(len);
		sieve_stripe<int> ss(len);
		for (unsigned int n=0; n<=len; n+=95) {
			ss.compute_section(n, n+94);
		}
		auto plist2 = ss.prime_list();
		if ( plist != plist2 ) {
			cout << "test6 fail: len=" << len << endl;
			return false;
		}
	}


}
