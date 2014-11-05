// g++ -std=c++11 -march=native -mtune=native -mthreads -O3 async.cpp -o async.exe

#include <iostream>
#include <cmath>
#include <chrono>
#include <future>
#include <thread>
#include <vector>

using nt = unsigned long long;

// Of course, in the real-world, we wouldn't trial divide by evens...
bool is_prime_int(nt num, nt start, nt end)
{
	for (nt n=start; n<=end; ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}

bool is_prime_int(nt num)
{
	return is_prime_int(num, 2, static_cast<nt>(sqrt(num)));
}


bool is_prime_async(nt num, int numthreads)
{
	nt limit = sqrt(num);

	using threadtype = std::future<bool>;
	std::vector<threadtype> threads;

	int start = 2;
	int end = limit / numthreads;
	auto this_thread = [num,start,end]() { return is_prime_int(num, start, end); };
	for (int t = 2; t <= numthreads; ++t) {
		start = end + 1;
		end += limit / numthreads;
		if ( t == numthreads ) { end = limit; }
		auto task = [num,start,end]() { return is_prime_int(num, start, end); };
		threads.push_back( std::async(std::launch::async, task) );
	}
	// Get results (and force all threads to end, though in a real application this
	// is not efficient if num is not prime).
	std::vector<bool> results;
	results.push_back( this_thread() );
	for (auto &t : threads) {
		results.push_back( t.get() );
	}
	// And them all and return
	for (auto r : results) {
		if ( not r ) { return false; }
	}
	return true;
}

using std::cout;
using std::endl;

int main()
{
	//nt num = 9223372036854775783;
	nt num = 1152921504606846697;
	//nt num = 1125899906842553;
	
	cout << "One thread:" << endl;
	std::chrono::steady_clock::time_point t1,t2;
	for (int n=0; n<5; ++n) {
		t1 = std::chrono::steady_clock::now();
		bool res = is_prime_int(num);
		t2 = std::chrono::steady_clock::now();
		std::chrono::duration<double> time_span;
		time_span = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
		std::cout << time_span.count() << "   ";
		if ( res )
		{
			std::cout << num << " is prime." << std::endl;
		}
	}
	for (int t=2; t<=6; ++t) {
		cout << t<<" threads:" << endl;
		for (int n=0; n<5; ++n) {
			t1 = std::chrono::steady_clock::now();
			bool res = is_prime_async(num,t);
			t2 = std::chrono::steady_clock::now();
			std::chrono::duration<double> time_span;
			time_span = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
			std::cout << time_span.count() << "   ";
			if ( res )
			{
				std::cout << num << " is prime." << std::endl;
			}
		}
	}
	return 0;
}
