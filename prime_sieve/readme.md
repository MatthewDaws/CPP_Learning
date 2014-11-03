# Prime sieving in C++ #

# Base algorithm #

We use a simple [Sieve of Eratosthenes](http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) with the minor optimisation of only storing odd numbers.

The C++ implementation uses a `std::vector<bool>` to store the sieve, and a `std::vector<T>` to store the resulting generated list of prime numbers.  I decided to use templates here: a sensible choice is `unsigned int` but wanting to use more than 32-bits is reasonable.  However, of course we should also worry about what the `std::vector` implementation uses, which will govern the maximum length.  So maybe a template is overkill...

We use the observation that when sieving the prime $p$ we need only consider the numbers $p^2, p(p+1), p(p+2), \cdots$ as smaller non-primes will have already been "cancelled" from the sieve.

# Various algorithm implementations #

## class sieve ##

Calculates the entire sieve in one pass.

**std::vector<T> prime_list(const T len)** Uses this class to produce a list of primes.  No doubt causes a substantial number of re-allocations as it grows the std::vector; indeed, see the timings below

**std::vector<T> prime_list1(const T len)** Proof of concept for the following class.

## class prime_sieve_list ##

This uses the observation that once we know the primes $\leq n$ we have enough information to compute a sieve up to size $n^2$ without needing to know any further primes.  This class then uses class sieve to produce a short list of primes, stores this, and then on demand can produce a subsection of the sieve.  It can also produce a subsection of the sieve in "strips", that is, calculate the sieve between $N$ and $N+n-1$ and then between $N+n$ and $N+2n-1$ and so on.  The choice of $n$ allows us to fit the entire calculation into the L1 data cache, which significantly improves performance.

**sieve_to_list_pushback** Produces a list of primes from a subsection of a sieve.

**primes_range_pushback** Produces subsections of a sieve in a give strip size,
and then "pushbacks" the primes thus calculated onto a std::vector.
_This is, I think, the fastest algorithm._

**prime_list2** Helper function to return a list of primes.
An optional strip size can be provided-- this function computes a section of the sieve, then processes it to append the new primes to the std::vector, and then iterates until done.

**prime_list3** Instead computes the whole sieve in strips, and then scans it to find the prime list.


## class sieve_stripe ##
 
This abstracts the ideas of the above: the constructor finds the initial small list of primes, and also pre-allocates the entire sieve.  Then member functions can be called to compute sub-sections of the sieve.  The aim is to facilitate a clean approach to multi-threading.  Annoyingly, despite being essentially the same algorithm as the above, this is noticeably slower.

# Time comparisons #

T = unsigned int

Algorithm | Size (1000s) | Time (seconds)
--- | --- | ---
prime_list | 1 | 3.62e-6
           | 10 | 3.84e-5
           | 100 | 3.92e-4
           | 1000 | 3.06e-3
           | 10,000 | 4.31e-2
           | 100,000 | 5.39e-1
           | 1000,000 | 6.39
prime_list1 | 1 | 3.95e-6
   | 10 | 4.18e-5
   | 100 | 4.05e-4
   | 1000 | 4.17e-3
   | 10,000 | 4.43e-2
   | 100,000 | 5.67e-1
   | 1000,000 | 6.94568
prime_list2  |  1  | 3.41e-6
(strip size  |  10 |2.57e-5
80000)       |  100 | 3.14e-4
   | 1000 | 3.17e-3
   | 10,000 | 3.22e-2
   | 100,000 | 3.43e-1
   | 1000,000 | 3.70
prime_list2  |  1  | 3.40e-6
(strip size  |  10 | 2.55e-5
512000)       |  100 | 3.11e-4
   | 1000 | 3.14e-3
   | 10,000 | 3.15e-2
   | 100,000 | 3.20e-1
   | 1000,000 | 3.19
prime_list3  |  1  | 3.22e-6
(strip size  |  10 | 2.53e-5
512000)       |  100 | 3.11e-4
   | 1000 | 3.15e-3
   | 10,000 | 3.15e-2
   | 100,000 | 3.23e-1
   | 1000,000 | 3.21
sieve_stripe |  1  | 4.29e-6
(strip size  |  10 | 3.11e-5
512000)       |  100 | 3.79e-4
   | 1000 | 3.92e-3
   | 10,000 | 3.87e-2
   | 100,000 | 3.85e-1
   | 1000,000 | 3.88

Various experiments with changing the "strip size" in different algorithms all tell the same story: the optimal size is when the processed section takes around 32k of memory, or the L1 data cache of my i5.  Smaller sizes are significantly slower (due to overhead) while larger sizes are a little slower; but the difference between a strip of roughly 32k, and a single pass, is around twice as fast!

## Just finding the sieve ##

Algorithm | Size (1000s) | Time (seconds)
--- | --- | ---
sieve | 1 | 1.35e-6
   | 10 | 1.05e-5
   | 100 | 1.17e-4
   | 1000 | 1.34e-3
   | 10,000 | 1.72e-2
   | 100,000 | 2.88e-1
   | 1000,000 | 4.27
sieve_stripe |  1 | 2.10e-6
(strip size   |  10 | 1.15e-5
512000)  | 100 | 1.20e-4
   | 1000 | 1.34e-3
   | 10,000 |  1.51e-2
   | 100,000 | 1.63e-1
   | 1000,000 | 1.77
   | 4000,000 | 7.59
sieve_stripe   |  10 | 8.48e-5
(strip size  | 100 | 1.45e-4
512000  | 1000 | 7.93e-4
2 threads)   | 10,000 | 8.41e-3
   | 100,000 | 1.11e-1
   | 1000,000 | 1.31
   | 4000,000 | 5.77

## Brief thoughts on 2 threaded attempt ##

The 2 threaded version splits the sieve to be computed into three sections: the first final ones large blocks of size about 32k (or slightly less), with a short middle section designed to be 128 bits or more.  We then compute the first and third sections in different threads, with the middle section forming a "buffer" so, even with std::vector<bool>, we can be happy that the 2 threads are working on genuinely different parts of memory.  We then process the short middle section and return.

So this is all done "in place", with no copying large arrays around.  However, the performance is rather poor: the best (for size 10 million) around 60% (so 2 threads takes 60% of the time of one thread) and the worst, for 4 billion, of 76%.  In my mind, this should be "embarrassingly parallel" and so we aim for 50%.  I don't understand why the larger problems, where the memory being worked on by each thread is really "distinct", should show worse performance.

(As a test, the same code was run, asking `std::async` to run in a single thread--- the performance is the same as for a straight single-threaded solution, except for small problem sizes, so it's not that I'm splitting the problem up in an obviously incorrect way.) 

The timings for varying the stripe size are much less robust than for the single threaded code: I get quite pronounced variations on different runs:
  
  - Sometimes 16k is the quickest
  - Often 256k is faster than 64 or 128k (or 512k)

So I can only assume this is some sort of memory contention / cache issue I don't fully understand.


# File list #

- sieve.tpp : Main templates
- sieve.cpp : Test code
- sieve_time.cpp : Various timings code, put into a separate file to avoid over-zealous compiler optimisations
- sieve_time.h : Header file for above
- timer.tpp : Template for timing code
- main.cpp : Main file run tests and various timings. 