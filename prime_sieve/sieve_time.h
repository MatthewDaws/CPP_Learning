/** @file: sieve_time.h
 *  @author: Matthew Daws
 *
 *  Some Prime Sieve (aka Sieve of Eratosthenes) code.
 *  Various timings code, pulled into separate file to avoid too much optimisation.
 */

#include "sieve.tpp"
#include <vector>

std::vector<unsigned int> dotime1(unsigned int size);
std::vector<unsigned int> dotime2(unsigned int size);
std::vector<unsigned int> dotime3(unsigned int size);
std::vector<unsigned int> dotime4(unsigned int size, unsigned int stripe);
std::vector<unsigned int> dotime5(unsigned int size, unsigned int stripe);
std::vector<unsigned int> dotime6(unsigned int size, unsigned int stripe);
std::vector<bool> dotime6a(unsigned int size, unsigned int stripe);
std::vector<bool> dotime6b(unsigned int size);
std::vector<bool> dotime7(unsigned int size, bool usethreads);
std::vector<bool> dotime7(unsigned int size, unsigned int ssize, bool usethreads);
bool test_dotime7();
bool test_dotime6a7();
