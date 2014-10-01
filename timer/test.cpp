/** @file timer.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  Simple class to time code snippets: test file
 */

#include "timer.h"


#include <iostream>
using std::cout;
using std::endl;


// From Josuttis
#include <iomanip>

template <typename C>
void print_clock_data()
{
	using namespace std;
	
	auto old_flags = cout.flags();
	cout << "- precision: ";
	using P = typename C::period;
	if ( ratio_less_equal<P,milli>::value ) {
		using TT = typename ratio_multiply<P,kilo>::type;
		cout << fixed << double(TT::num)/TT::den << " milliseconds" << endl;
	} else {
		cout << fixed << double(P::num)/P::den << " seconds" << endl;
	}
	cout << "- is_steady: " << boolalpha << C::is_steady << endl;
	cout.flags(old_flags);
}

#include <vector>

int sum(int n)
{
	/*int sum = 0;
	for (int x=0; x<n; ++x) {
		sum+=x;
	}
	return sum;*/

	constexpr int len = 100000;
	std::vector<bool> primes(len,true);
	for (int p=2; p*p<=len; ) {
		for (int pp=p*p; pp<=len; pp+=p) {
			primes[pp-1] = false;
		}
		++p;
		while ( primes[p-1] == false and p*p<=len ) { ++p; }
	}
	int count = 0;
	for (int p=2; p<=len; ++p) {
		if ( primes[p-1] ) { ++count; }
	}
	return count;
	
	/*int a = 0, b = 1;
	int count = 0;
	for (int x=0; x<n; ++x) {
		auto c = a + b;
		a = b;
		b = c;
		count += a;
	}		
	return count;*/
}

class test : public time_snippet {
public:
	int work() { return sum(10000); }
};

int main()
{
	//cout << "system_clock: " << endl;
	//print_clock_data<std::chrono::system_clock>();
	//cout << "high_resolution_clock: " << endl;
	//print_clock_data<std::chrono::high_resolution_clock>();
	cout << "steady_clock: " << endl;
	print_clock_data<std::chrono::steady_clock>();

	test t;
	cout << "Time: " << t.time(1000) << endl;
	cout << "Auto time: " << t.time_auto() << endl;
	cout << "Best 3: " << t.best_auto(3) << endl;
	cout << "Timeit template: " << timeit(1000, [](){ sum(10000); }) << endl;

	return 0;
}
