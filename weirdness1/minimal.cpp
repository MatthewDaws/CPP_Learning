#include <iostream>
#include <cmath>
#include <chrono>

/** Exhibts the same issues; for 3 loops, consistently get:
  *   -Ofast                               |  11.8
  *   -O3                                  |  13.2
  *   -Ofast -mtune=native -march=native   |  13.0
  *   -O3 -mtune=native -march=native      |  13.0
  *
  * However, if we remove the sqrt(num) out of the for loop and cache the result, we get:
  *   -Ofast                               |  12.8
  *   -O3                                  |  12.8
  *   -Ofast -mtune=native -march=native   |  12.8
  *   -O3 -mtune=native -march=native      |  12.8
  *
  * In the 2nd case, except for minor re-ordering of instructions, the inner loops are all
  * the same.  In the 1st case, floating point compares are used (!) and various different
  * sse instructions are used; presumably the difference is down to -Ofast taking float-point
  * short-cuts.  Quite how this ends up noticably faster than the pure integer code is a
  * slight mystery!
  *
  * With 3 different functions, floating-point compare, get:
  *   -Ofast                               |  13.2
  *   -O3                                  |  11.8
  *   -Ofast -mtune=native -march=native   |  11.9
  *   -O3 -mtune=native -march=native      |  11.9
  *   -mtune=native -O2                    |  12.6
  * Integer compare, get:
  *   -Ofast                               |  12.8
  *   -O3                                  |  12.8
  *   -Ofast -mtune=native -march=native   |  12.8
  *   -O3 -mtune=native -march=native      |  12.8
  *   -mtune=native -O2                    |  12.3  (!!)
  * While loop version, get:
  *   -Ofast                               |  12.8
  *   -O3                                  |  12.8
  *   -Ofast -mtune=native -march=native   |  12.8
  *   -O3 -mtune=native -march=native      |  12.8
  *   -mtune=native -O2                    |  12.3  (!!)
  */

using nt = unsigned long long;

bool is_prime_float(nt num)
{
	for (nt n=2; n<=sqrt(num); ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}

/*bool is_prime_int(nt num)
{
	nt limit = sqrt(num);
	for (nt n=2; n<=limit; ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}

bool is_prime_while(nt num)
{
	nt n=2;
	nt limit = sqrt(num);
	while ( n<=limit and (num%n)!=0 ) { ++n; }
	if ( n>limit ) { return true; }
	return false;
}*/

int main()
{
	//nt num = 9223372036854775783;
	nt num = 1152921504606846697;
	//nt num = 1125899906842553;
	
	std::chrono::steady_clock::time_point t1,t2;
	for (int n=0; n<3; ++n) {
		t1 = std::chrono::steady_clock::now();
		bool res = is_prime_float(num);
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
