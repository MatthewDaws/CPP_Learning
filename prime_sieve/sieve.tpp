/** @file: sieve.tpp
 *  @author: Matthew Daws
 *
 *  Some Prime Sieve (aka Sieve of Eratosthenes) code.
 *  Lots of templates (quite plausible to use 64-bit integers; but this is a waste
 *  of memory if `unsigned int` is enough for you).
 */

#ifndef __SIEVE_TPP
#define __SIEVE_TPP


#include <vector>
#include <cmath>

#include <iostream>
using std::cout;
using std::endl;


// --------------------------------------------------------------------------
// class sieve<T> code
// --------------------------------------------------------------------------

/** Prime Sieve
  * We use a std::vector<bool> and skip evens, so the mapping is
  * 0->3,  1->5,  2->7,  n->3+n+n
  *
  * type T just needs to be large enough to express the maximum prime; so int is
  * probably fine.
  */
template <typename T>
class sieve {
public:
	sieve(const T len);
	bool is_prime(const T p)const;
	std::vector<bool>& get_sieve() { return psieve; }
private:
	std::vector<bool> psieve;
	T length;
};

/** Lookup in the sieve to test if prime */
template <typename T>
bool sieve<T>::is_prime(const T p)const
{
	if ( p <= 1 or (p%2) == 0 or p > length ) { return false; }
	return psieve[ (p-3)/2 ];
}

/** Constructor which also makes the sieve */
template <typename T>
sieve<T>::sieve(const T len)
	: length{len}
{
	psieve.resize((length-3)/2+1,true);
	T limit = sqrt(length);
	T prime = 3;
	while ( prime <= limit ) {
		//for (T x = prime*prime; x<=length; x+=prime+prime) {
		//	psieve[(x-3)/2] = false;
		//}
		// This is equivalent, but some assembler staring suggests gets optimised
		// better by the compiler.
		for (T x = (prime*prime-3)/2; x<=(length-3)/2; x+=prime) {
			psieve[x] = false;
		}
		prime += 2;
		while ( prime<limit and psieve[(prime-3)/2]==false ) { prime+=2; }
	}
}





// --------------------------------------------------------------------------

/** Returns a list of primes up to and including `len`
  * Uses class sieve internally.
  */
template <typename T>
std::vector<T> prime_list(const T len)
{
	sieve<T> s(len);
	std::vector<T> primes;
	primes.push_back(2);
	for (T p=3; p<=len; p+=2) {
		if ( s.is_prime(p) ) { primes.push_back(p); }
	}
	return primes;
}





// --------------------------------------------------------------------------

/** Returns a list of primes up to and including `len`
  * Variant of above: constructs a small list of primes and then builds the rest of
  * the sieve using this.
  * Little more than a proof of concept, as the next class does the same but with much
  * more control.
  */
template <typename T>
std::vector<T> prime_list1(const T len)
{
	if ( len < 10 ) { return prime_list(len); }
	// Get a list of primes of size sqrt(len)
	T sqrt_len = sqrt(len);
	if ( sqrt_len * sqrt_len < len ) { ++sqrt_len; }
	auto primes = prime_list(sqrt_len);
	// Now re-create the rest of the sieve
	std::vector<bool> sieve(len/2,true);
	T start = sqrt_len + 1 - (sqrt_len%2); // If even add one
	// Mapping is start->0, start+2->1, start+4->2 etc.
	for (auto it = primes.begin() + 1; it != primes.end(); ++it) {
		auto p = *it;
		T ps = start + p - 1;
		ps = ps - (ps % p); // Now ps is the smallest multiple of p which is >= start
		if ( (ps%2)==0 ) { ps+=p; } // Ensure ps not even
		/*for (T pp = ps; pp <= len; pp += p + p) {
			sieve[ (pp-start)/2 ] = false;
		}*/
		for (T pp = (ps-start)/2; pp <= (len-start)/2; pp += p) {
			sieve[ pp ] = false;
		}
	}
	// Add to list
	/*for (T p=start; p<=len; p+=2) {
		if ( sieve[ (p-start)/2 ] ) { primes.push_back(p); }
	}*/
	for (T p=0; p<=(len-start)/2; ++p) {
		if ( sieve[ p ] ) { primes.push_back(start + p + p); }
	}
	return primes;
}





// --------------------------------------------------------------------------

/** Same as previous version, but now we've split the sieve creation into a separate routine,
  * which can be called on an arbitrary range.
  * The constructor parameter `len` is now the maximum initial prime to find; so the
  * sieve can ultimately be constructed up to size `len*len`.
  */
template <typename T>
class prime_sieve_list {
public:
	prime_sieve_list(const T len);
	std::vector<T> primes;
	std::vector<bool> partial_sieve(T start, T end)const;
	std::vector<bool> partial_sieve(T start, T end, T stripe_size)const;
	std::vector<T> sieve_to_list(T start, std::vector<bool> sieve)const;
	void sieve_to_list_pushback(T start, std::vector<bool> sieve, std::vector<T> &l)const;
	inline std::vector<T> primes_range(T start, T end)const
		{ return sieve_to_list(start, partial_sieve(start,end)); }
	void primes_range_pushback(T start, T end, T stripe_size, std::vector<T> &vec)const;
};

/** Constructor: make and store a small list of primes. */
template <typename T>
prime_sieve_list<T>::prime_sieve_list(const T len)
{
	primes = prime_list(len);
}

/** Constructs a partial sieve.  Assumes start > len
  * If start is even it's increased, and then index 0 of the returned vector corresponds to
  * start, index 1 to start+2, and so forth
  */
template <typename T>
std::vector<bool> prime_sieve_list<T>::partial_sieve(T start, T end)const
{
	start += 1 - (start%2); // Increase, if necessary, to make odd
	if ( start > end ) { return std::vector<bool>(0); }
	std::vector<bool> sieve((end-start)/2+1,true);
	for (auto it = primes.begin()+1; it != primes.end(); ++it) {
		auto p = *it;
		T ps = start + p - 1;
		ps = ps - (ps % p);
		if ( (ps%2)==0 ) { ps += p; } // ps smallest odd multiple of p greater than or equal to start
		/*for (T pp=ps; pp<=end; pp+=p+p) {
			sieve[ (pp-start)/2 ] = false;
		}*/
		for (T pp=(ps-start)/2; pp<=(end-start)/2; pp+=p) {
			sieve[ pp ] = false;
		}
	}
	return sieve;
}

/** As above, but does in chunks of stripe_size.
  */
template <typename T>
std::vector<bool> prime_sieve_list<T>::partial_sieve(T start, T end, T stripe_size)const
{
	start += 1 - (start%2); // Increase, if necessary, to make odd
	if ( start > end ) { return std::vector<bool>(0); }
	std::vector<bool> sieve((end-start)/2+1,true);
	for (T stripe_start = start; stripe_start <= end; stripe_start += stripe_size) {
		T stripe_end = stripe_start + stripe_size - 1;
		if ( stripe_end > end ) { stripe_end = end; }
		for (auto it = primes.begin()+1; it != primes.end(); ++it) {
			auto p = *it;
			T ps = stripe_start + p - 1;
			ps = ps - (ps % p);
			if ( (ps%2)==0 ) { ps += p; } // ps smallest odd multiple of p greater than or equal to stripe_start
			for (T pp = (ps-start)/2; pp <= (stripe_end-start)/2; pp += p) {
				sieve[pp] = false;
			}
		}
	}
	return sieve;
}

/** Use a sieve to make a list of primes.  If start is even it's increased to make it odd.
  */
template <typename T>
std::vector<T> prime_sieve_list<T>::sieve_to_list(T start, std::vector<bool> sieve)const
{
	std::vector<T> prange;
	sieve_to_list_pushback(start, sieve, prange);
	return prange;
}

/** Same as sieve_to_list but uses passed vector.
  */
template <typename T>
void prime_sieve_list<T>::sieve_to_list_pushback(T start, std::vector<bool> sieve, std::vector<T> &vec)const
{
	start += 1 - (start%2); // Increase, if necessary, to make odd
	T p = start;
	for (auto it = sieve.begin(); it != sieve.end(); ++it, p+=2) {
		if ( *it ) { vec.push_back(p); }
	}
}

/** Split the task into blocks of size stripe_size; hope to get a better play with cache.
  */
template <typename T>
void prime_sieve_list<T>::primes_range_pushback(T start, T end, T stripe_size, std::vector<T> &vec)const
{
	for (T s = start; s <= end; s += stripe_size) {
		T e = s + stripe_size - 1;
		if ( e > end ) { e = end; }
		sieve_to_list_pushback(s, partial_sieve(s,e), vec);
	}
}





// --------------------------------------------------------------------------

/** This class prioritises finding the sieve, and allows the computation of arbitrary
  * subsections, with a view to multi-threading
  */

template <typename T>
class sieve_stripe {
public:
	sieve_stripe(const T len);
	bool is_prime(const T p)const;
	void compute_section(T start, T end);
	std::vector<T> prime_list()const;
	std::vector<bool> sieve;	
private:
	T length;
	std::vector<T> smallprimes;
};

template <typename T>
sieve_stripe<T>::sieve_stripe(const T len)
	: length{len}, sieve((len-1)/2, true)
{
	// Find small primes
	T sqrt_len = sqrt(len);
	if ( sqrt_len * sqrt_len < len ) { ++sqrt_len; }
	prime_sieve_list<T> pl(sqrt_len);
	smallprimes = std::move(pl.primes);
}

template <typename T>
bool sieve_stripe<T>::is_prime(const T p)const
{
	if ( p==2 ) { return true; }
	if ( p<=1 or (p%2)==0 or p>length ) { return false; }
	return sieve[ (p-3)/2 ];
}

template <typename T>
void sieve_stripe<T>::compute_section(T start, T end)
{
	if ( start < 3 ) { start = 3; }
	start += 1 - (start%2); // Ensure odd
	if ( end > length ) { end = length; }
	if ( start > end ) { return; }
	T endcache = (end-3)/2;
	if ( start < smallprimes.back()*smallprimes.back() ) {
		for (auto it = smallprimes.begin()+1; it != smallprimes.end(); ++it) {
			auto p = *it;
			T ps = start + p - 1;
			ps = ps - (ps % p);
			if ( (ps%2)==0 ) { ps += p; } // ps smallest odd multiple of p greater than or equal to start
			if ( ps < p*p ) { ps = p*p; }
			for (T pp = (ps-3)/2; pp <= endcache; pp += p) {
				sieve[pp] = false;
			}
		}
		return;
	}
	for (auto it = smallprimes.begin()+1; it != smallprimes.end(); ++it) {
		auto p = *it;
		T ps = start + p - 1;
		ps = ps - (ps % p);
		if ( (ps%2)==0 ) { ps += p; } // ps smallest odd multiple of p greater than or equal to start
		for (T pp = (ps-3)/2; pp <= endcache; pp += p) {
			sieve[pp] = false;
		}
	}
}

template <typename T>
std::vector<T> sieve_stripe<T>::prime_list()const
{
	std::vector<T> primes;
	primes.push_back(2);
	T p = 3;
	for (auto it = sieve.begin(); it != sieve.end(); ++it, p+=2) {
		if ( *it ) { primes.push_back(p); }
	}
	return primes;
}



// --------------------------------------------------------------------------

/** Actually find a full list using prime_sieve_list.
  */
template <typename T>
std::vector<T> prime_list2(const T len)
{
	if ( len<10 ) { return prime_list(len); }
	T sqrt_len = sqrt(len);
	if ( sqrt_len * sqrt_len < len ) { ++sqrt_len; }
	prime_sieve_list<T> pl(sqrt_len);
	std::vector<T> primes = pl.primes;
	pl.sieve_to_list_pushback(sqrt_len+1, pl.partial_sieve(sqrt_len+1,len), primes);
	return primes;
}

/** Actually find a full list using prime_sieve_list.
  * This version allows control of the stripe size: this is the size of the vector<bool>
  */
template <typename T>
std::vector<T> prime_list2(const T len, const T size)
{
	if ( len<10 ) { return prime_list(len); }
	T sqrt_len = sqrt(len);
	if ( sqrt_len * sqrt_len < len ) { ++sqrt_len; }
	prime_sieve_list<T> pl(sqrt_len);
	std::vector<T> primes = pl.primes;
	pl.primes_range_pushback(sqrt_len+1, len, size, primes);
	return primes;
}

/** Version which computes the whole sieve at once, using a stripe size.
  */
template <typename T>
std::vector<T> prime_list3(const T len, const T size)
{
	if ( len<10 ) { return prime_list(len); }
	T sqrt_len = sqrt(len);
	if ( sqrt_len * sqrt_len < len ) { ++sqrt_len; }
	prime_sieve_list<T> pl(sqrt_len);
	std::vector<T> primes = pl.primes;
	pl.sieve_to_list_pushback(sqrt_len+1, pl.partial_sieve(sqrt_len+1, len, size), primes);	
	return primes;
}





/** Various testing routines */
/** Tests that prime_list returns correctly */
bool test1();
/** Tests that prime_list and prime_list1 return the same lists */
bool test2();
/** Tests that prime_list and prime_list2 return the same lists */
bool test3();
/** Tests that prime_list and prime_list2(...,stripe_size) return the same lists */
bool test4();
/** Tests that prime_list and prime_list3 return the same lists */
bool test5();
/** Tests that prime_list and class sieve_stripe return the same lists */
bool test6();


#endif // __SIEVE_TPP
