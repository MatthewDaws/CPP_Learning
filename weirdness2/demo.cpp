// g++ -std=c++11 -march=native -mtune=native -O3 demo.cpp -o demo.exe

#include <iostream>
#include <cmath>
#include <chrono>

using nt = unsigned long long;

bool is_prime_int(nt num)
{
	nt limit = sqrt(num);
	for (nt n=2; n<=limit; ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}

int main()
{
	//nt num = 9223372036854775783;
	nt num = 1152921504606846697;
	//nt num = 1125899906842553;
	
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
	return 0;
}
