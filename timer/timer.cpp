/** @file timer.cpp
 *  @author Matthew Daws
 *
 *  @section DESCRIPTION
 *  Simple class to time code snippets
 */

#include "timer.h"

#include <chrono>

/** Call `work()` `loops` number of time, returns total time taken. */
double time_snippet::total_time(int loops)
{
	std::chrono::steady_clock::time_point t1,t2;
	t1 = std::chrono::steady_clock::now();
	for (int n=0; n<loops; ++n) {
		work();
	}
	t2 = std::chrono::steady_clock::now();
	std::chrono::duration<double> time_span;
	time_span = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
	return time_span.count();
}

/** Call `work()` `loops` number of time, returns average time per loop. */
double time_snippet::time(int loops)
{
	return total_time(loops) / static_cast<double>(loops);
}

/** Call `work()` first once, then twice, then 4 times, and so on, until the
 *  total time is over a second.  Returns the average time per loop.
 */
double time_snippet::time_auto()
{
	int loops = 1;
	double init = total_time(loops);
	while ( init < 1.0 ) {
		loops += loops;
		//cout << "Trying " << loops << " loops";
		init = total_time(loops);
		//cout << " -> " << init << endl;
	}
	return init / static_cast<double>(loops);
}

/** Call `work()` an automated number of times (so each test takes over a second)
 *  and then returns best time out of `trials` runs.
 */
double time_snippet::best_auto(int trials)
{
	int loops = 1;
	double init = total_time(loops);
	while ( init < 1.0 ) {
		loops += loops;
		init = total_time(loops);
	}
	double best = init / static_cast<double>(loops);
	for (int n=1; n<trials; ++n) {
		init = total_time(loops) / static_cast<double>(loops);
		if ( init < best ) { best = init; }
	}
	return best;
}
