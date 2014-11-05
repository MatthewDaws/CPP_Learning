/** @file: sieve_time.cpp
 *  @author: Matthew Daws
 *
 *  Some Prime Sieve (aka Sieve of Eratosthenes) code.
 *  Various timings code.
 */

#include "sieve_time.h"
#include "timer.tpp"

#include <iostream>
using std::cout;
using std::endl;

#include <fstream>

bool tests()
{
	if ( ! test1() ) { return false; }
	if ( ! test2() ) { return false; }
	if ( ! test3() ) { return false; }
	if ( ! test4() ) { return false; }
	if ( ! test5() ) { return false; }
	if ( ! test6() ) { return false; }
	if ( ! test_dotime7() ) { return false; }
	if ( ! test_dotime6a7() ) { return false; }
	return true;
}

/** Save out the first billion primes.  This is a little slow, and takes 1/2GB of disk space. */
void show_off()
{
	cout << "Primes below 1,000,000,000: ";
	auto pl = prime_list2<unsigned int>(1000000000,512000);
	cout << pl.size() << endl;
	cout << "Writing to file..." << endl;
	std::ofstream file("primes.txt", std::ios::out);
	if ( !file ) {
		cout << "Can't open 'primes.txt' for writing..." << endl;
		return;
	}
	for (const auto x : pl) {
		file << x << endl;
	}
}

void time1()
{
	cout << "Timings for prime_list<unsigned int>:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime1(size); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
}

void time2()
{
	cout << "Timings for prime_list1<unsigned int>:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime2(size); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
}

void time3()
{
	cout << "Timings for prime_list2<unsigned int>:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime3(size); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
}

void time4()
{
	cout << "Timings for prime_list2<unsigned int> with stripe size 80000:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime4(size,80000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
}

/** Fastest seems to occur at 32KB usage, which is indeed the L1 data cache on my i5.
 */
void time5()
{
	cout << "Timings for prime_list2<unsigned int> size 100,000,000, various stripe sizes:" << endl;
	cout << "Memory used for std::vector<bool> should be about the displayed amount." << endl;
	std::vector<int> stripes{4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536};
	for (auto ss : stripes) {
		auto func = [ss]() { dotime4(100000000,ss*1024); };
		cout << ss*1024/16 << " : " << timeit(3, func) << endl;
	}
}

/** Fastest seems to occur at 32KB usage, which is indeed the L1 data cache on my i5.
 */
void time5a()
{
	cout << "Timings for prime_list2<unsigned int> size 1,000,000,000, various stripe sizes:" << endl;
	cout << "Memory used for std::vector<bool> should be about the displayed amount." << endl;
	std::vector<int> stripes{32,64,128,256,512,1024,2048,4096,8192};
	for (auto ss : stripes) {
		auto func = [ss]() { dotime4(1000000000,ss*1024); };
		cout << ss*1024/16 << " : " << timeit(1, func) << endl;
	}
	auto func = []() { dotime3(1000000000); };
	cout << "One block : " << timeit(1, func) << endl;
}

void time5b()
{
	cout << "Timings for prime_list3<unsigned int> size 1,000,000,000, various stripe sizes:" << endl;
	cout << "Memory used for std::vector<bool> should be about the displayed amount." << endl;
	std::vector<int> stripes{32,64,128,256,512,1024,2048,4096,8192};
	for (auto ss : stripes) {
		auto func = [ss]() { dotime5(1000000000,ss*1024); };
		cout << ss*1024/16 << " : " << timeit(1, func) << endl;
	}
}

/** Compare prime_list2 with prime_list3 (which builds the whole sieve via a stripe method). */
void time6()
{
	cout << "Timings for prime_list2<unsigned int> with stripe size 512000:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime4(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
	cout << "Timings for prime_list3<unsigned int> with stripe size 512000:" << endl;
	size = 100; loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime5(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		//cout << size << " : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
}

/** Finding the sieve */
void time7()
{
	cout << "Timings for sieve_stripe<unsigned int> with stripe size 512000:" << endl;
	int size = 100, loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime6(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
	cout << "Timings just for sieve:" << endl;
	size = 100; loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime6a(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
	cout << "Compare to class sieve:" << endl;
	size = 100; loops = 2000000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime6b(size); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	cout << endl;
	cout << "Timings for sieve_stripe<unsigned int>(1000000000) with various stripe sizes:" << endl;
	std::vector<int> stripes{32,64,128,256,512,1024,2048,4096,8192};
	for (auto ss : stripes) {
		auto func = [ss]() { dotime6(1000000000,ss*1024); };
		cout << ss*1024/16 << " : " << timeit(1, func) << endl;
	}
}

/** Finding the sieve, with 2 threads */
void time8()
{
	cout << "Using class sieve_stripe<unsigned int> with stripe size circa 512000." << endl;
	cout << "Single threaded:" << endl;
	unsigned int size = 10000, loops = 50000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime6a(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	{
		size = 4000000000;
		auto func = [size]() { dotime6a(size,512000); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
	}
	cout << endl;
	cout << "2 threads for finding the sieve:" << endl;
	size = 10000; loops = 50000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime7(size,true); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	{
		size = 4000000000;
		auto func = [size]() { dotime7(size,true); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
	}
	cout << endl;
	cout << "Same code, but with one thread:" << endl;
	size = 10000; loops = 50000;
	while ( size <= 1000000000 ) {
		auto func = [size]() { dotime7(size,false); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
		size *= 10;
		loops /= 10;
		if ( loops == 0 ) { loops=1; }
	}
	{
		size = 4000000000;
		auto func = [size]() { dotime7(size,false); };
		cout << size << " ("<<loops<<") : " << timeit(loops, func) << endl;
	}
}

/** Finding the sieve, with 2 threads, varying stripe size */
void time8a()
{
	cout << "Timings for class sieve_stripe<unsigned int> 2 threads, size 1,000,000,000, various stripe sizes:" << endl;
	cout << "Memory used for std::vector<bool> should be about the displayed amount." << endl;
	std::vector<int> stripes{32,64,128,256,512,1024,2048,4096,8192};
	for (auto ss : stripes) {
		auto func = [ss]() { dotime7(1000000000,ss*1024,true); };
		cout << ss*1024/16 << " : " << timeit(1, func) << endl;
	}
}

int main()
{
	//if ( ! tests() ) { return 1; }
	
	/*time1();
	time2();
	time3();
	time4();
	time5();
	time5a();
	time5b();
	time6();
	time7();
	time8();
	time8a();*/

	cout << "1-thread, billion." << endl;
	for (int n=0; n<20; ++n) {
		auto func = []() { dotime6a(1000000000,512000); };
		cout << timeit(1, func) << endl;
	}

	cout << "2-threads, billion." << endl;
	for (int n=0; n<20; ++n) {
		auto func = []() { dotime7(1000000000,true); };
		cout << timeit(1, func) << endl;
	}

	return 0;
	
}
