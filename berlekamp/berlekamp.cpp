// Berlekamp's algorithm stuff

#include <vector>
#include <initializer_list>
#include <utility>
#include <iostream>
#include <algorithm>

// Polynonimal's over F_2
// A (hidden) contract the class makes is that the largest degree coefficient
// is always non-zero, except for the zero polynomial.

class PolyF2 {
public:
	PolyF2();
	PolyF2(const std::initializer_list<int> co);
	PolyF2(const std::vector<char>& co);
	// Default copy/move assignment/constructors are enough.
	int get_degree()const;
	bool is_zero()const;
	bool operator==(const PolyF2& rhs)const;
	bool operator!=(const PolyF2& rhs)const;
	PolyF2 operator+(const PolyF2& rhs)const;
	PolyF2 operator-(const PolyF2& rhs)const;
	PolyF2 operator*(const PolyF2& rhs)const;
	std::pair<PolyF2, PolyF2> divmod(const PolyF2& rhs)const;
	PolyF2 operator/(const PolyF2& rhs)const;
	PolyF2 operator%(const PolyF2& rhs)const;
	PolyF2 derivative()const;
	PolyF2 gcd(const PolyF2& rhs)const;
	PolyF2 extract_even_terms()const;
	std::vector<char> get_coefficients(int number)const;
private:
	std::vector<char> coefficients;
	void shrink_degree();
};

PolyF2::PolyF2()
{
	coefficients.push_back(0);
}

PolyF2::PolyF2(const std::initializer_list<int> co)
{
	for (const auto x : co)
	{
		coefficients.push_back(x & 1);
	}
	shrink_degree();
}

PolyF2::PolyF2(const std::vector<char>& co)
{
	for (const auto x : co)
	{
		coefficients.push_back(x & 1);
	}
	shrink_degree();
}

void PolyF2::shrink_degree()
{
	while ( coefficients.size() > 1 and coefficients.back() == 0 )
	{
		coefficients.pop_back();
	}
	if ( coefficients.size() == 0 ) {
		coefficients.push_back(0);
	}
}

int PolyF2::get_degree()const
{
	return static_cast<int>(coefficients.size()) - 1;
}

bool PolyF2::is_zero()const
{
	return get_degree() == 0 and coefficients[0] == 0;
}

bool PolyF2::operator==(const PolyF2& rhs)const
{
	if ( get_degree() != rhs.get_degree() ) { return false; }
	for (std::vector<char>::size_type i = 0; i < coefficients.size(); ++i) {
		if ( coefficients[i] != rhs.coefficients[i] ) { return false; }
	}
	return true;
}

bool PolyF2::operator!=(const PolyF2& rhs)const
{
	return !(*this == rhs);
}

PolyF2 PolyF2::operator+(const PolyF2& rhs)const
{
	PolyF2 p = *this;
	if ( rhs.get_degree() > p.get_degree() ) {
		std::vector<char>::size_type i = 0;
		while ( i < p.coefficients.size() ) {
			p.coefficients[i] ^= rhs.coefficients[i];
			++i;
		}
		while ( i < rhs.coefficients.size() ) {
			p.coefficients.push_back( rhs.coefficients[i] );
			++i;
		}
	} else {
		std::vector<char>::size_type i = 0;
		while ( i < rhs.coefficients.size() ) {
			p.coefficients[i] ^= rhs.coefficients[i];
			++i;
		}
	}
	p.shrink_degree();
	return p;
}

PolyF2 PolyF2::operator-(const PolyF2& rhs)const
{
	return *this + rhs; // Over F_2 !!
}

PolyF2 PolyF2::operator*(const PolyF2& rhs)const
{
	PolyF2 p;
	p.coefficients.resize(this->get_degree() + rhs.get_degree() + 1);
	for (std::vector<char>::size_type i = 0; i < this->coefficients.size(); ++i) {
		for (std::vector<char>::size_type j = 0; j < rhs.coefficients.size(); ++j) {
			p.coefficients[i+j] ^= this->coefficients[i] * rhs.coefficients[j];
		}
	}
	p.shrink_degree();
	return p;
}

std::pair<PolyF2, PolyF2> PolyF2::divmod(const PolyF2& rhs)const
{
	PolyF2 quot, rem;
	if ( rhs.is_zero() ) {
		return std::make_pair(quot, rem); // Division by zero, return 0, 0 gracefully.
	}
	if ( this->get_degree() < rhs.get_degree() ) {
		return std::make_pair(quot, *this);
	}
	quot.coefficients.resize(this->get_degree() - rhs.get_degree() + 1);
	rem = *this;
	for (int k = this->get_degree() - rhs.get_degree(); k >= 0; --k) {
		quot.coefficients[k] = rem.coefficients[k + rhs.get_degree()];
		for (int j = k + rhs.get_degree() - 1; j >= k; --j) {
			rem.coefficients[j] ^= quot.coefficients[k] * rhs.coefficients[j-k];
		}
	}
	if ( rhs.get_degree() == 0 ) {
		rem.coefficients.resize(1);
		rem.coefficients[0] = 0;
	} else {
		rem.coefficients.resize(rhs.get_degree());
	}
	quot.shrink_degree(); rem.shrink_degree();
	return std::make_pair(quot, rem);
}

PolyF2 PolyF2::operator/(const PolyF2& rhs)const
{
	auto pair = divmod(rhs);
	return pair.first;
}

PolyF2 PolyF2::operator%(const PolyF2& rhs)const
{
	auto pair = divmod(rhs);
	return pair.second;
}

PolyF2 PolyF2::derivative()const
{
	PolyF2 p = *this;
	for (int i = 0; i < get_degree(); ++i) {
		p.coefficients[i] = ( (i+1) * this->coefficients[i+1] ) & 1;
	}
	p.coefficients.pop_back();
	p.shrink_degree();
	return p;
}

PolyF2 PolyF2::gcd(const PolyF2& rhs)const
{
	auto aa = *this;
	auto bb = rhs;
	while ( not bb.is_zero() ) {
		auto tmp = aa % bb;
		aa = bb;
		bb = tmp;
	}
	return aa;
}

PolyF2 PolyF2::extract_even_terms()const
{
	std::vector<char> coeffs;
	for (std::vector<char>::size_type i = 0; i < coefficients.size(); i+=2) {
		coeffs.push_back(coefficients[i]);
	}
	PolyF2 p{coeffs};
	p.shrink_degree();
	return p;
}

// Get cofficients, zero-pads to return `number` if necessary.
// Pass `number = -1` to get all coefficients.
std::vector<char> PolyF2::get_coefficients(int number)const
{
	std::vector<char> ret;
	std::vector<char>::size_type num, n;
	if ( number == -1 ) {
		num = coefficients.size();
		n = coefficients.size();
	} else {
		num = number;
		n = std::min(num, coefficients.size());
	}
	for (std::vector<char>::size_type i = 0; i < n; ++i) {
		ret.push_back( coefficients[i] );
	}
	for (std::vector<char>::size_type i = n; i < num; ++i) {
		ret.push_back(0);
	}
	return ret;
}

std::ostream& operator<<(std::ostream& o, PolyF2 p)
{
	auto r = p.get_coefficients(-1);
	o << "PolyF2: ";
	//o << "[";
	//for (auto x : r ) { o << int(x) << ","; }
	//o << "]";
	if ( p.is_zero() ) {
		o << "0";
	} else {
		using T = std::vector<char>::size_type;
		std::vector<T> powers;
		for (T i = r.size(); i > 0; --i) {
			if ( r[i-1] == 1 ) { powers.push_back(i-1); }
		}
		if ( powers.size() > 1 ) {
			for (T i = 0; i < powers.size() - 1; ++i) {
				o << "X^" << powers[i] << " + ";
			}
		}
		if ( powers.back() > 0 ) {
			o << "X^" << powers.back();
		} else {
			o << "1";
		}
	}
	return o;
}


// Berlekamp's algorithm

std::vector<PolyF2> berlekamp(const PolyF2& p);

// Make square-free
std::vector<PolyF2> factor(const PolyF2& p)
{
	if ( p.is_zero() or p == PolyF2{1} ) {
		return std::vector<PolyF2>{p};
	}
	auto pdiv = p.derivative();
	if ( pdiv.is_zero() ) {
		auto factors = factor( p.extract_even_terms() );
		auto len = factors.size();
		for ( decltype(len) i = 0; i < len; ++i ) {
			factors.push_back( factors[i] );
		}
		return factors;
	}
	auto d = p.gcd( pdiv );
	if ( d == PolyF2{1} ) {
		return berlekamp(p);
	}
	auto factors = factor(d);
	auto factors1 = factor(p / d);
	for (const auto& x : factors1) {
		factors.push_back( x );
	}
	return factors;
}

// Need gaussian elimination for matrices over F_2
class SquareMatrixF2 {
public:
	SquareMatrixF2(const int size);
	static SquareMatrixF2 identity(const int size);
	void set(const int row, const int column, char value);
	char get(const int row, const int column)const;
	int get_size()const;
	SquareMatrixF2 operator+(const SquareMatrixF2& rhs)const;
	SquareMatrixF2 operator-(const SquareMatrixF2& rhs)const;
	SquareMatrixF2 get_transpose()const;
	void swap_rows(const int row1, const int row2);
	void add_rows(const int addto, const int addfrom);
private:
	int size;
	std::vector<char> entries;
};

SquareMatrixF2::SquareMatrixF2(const int si)
	: size(si), entries(si*si)
{
}

void SquareMatrixF2::set(const int row, const int column, char value)
{
	entries[column + size * row] = value & 1;
}

char SquareMatrixF2::get(const int row, const int column)const
{
	return entries[column + size * row];
}

int SquareMatrixF2::get_size()const
{
	return size;
}

SquareMatrixF2 SquareMatrixF2::identity(const int size)
{
	SquareMatrixF2 m{size};
	for (int i=0; i<size; ++i) {
		m.set(i,i,1);
	}
	return m;
}

SquareMatrixF2 SquareMatrixF2::operator+(const SquareMatrixF2& rhs)const
{
	int si = std::min(get_size(), rhs.get_size());
	SquareMatrixF2 m{si};
	for (int row = 0; row < si; ++row) {
		for (int col = 0; col < si; ++col) {
			m.set(row, col, get(row, col) ^ rhs.get(row, col));
		}
	}
	return m;
}

SquareMatrixF2 SquareMatrixF2::operator-(const SquareMatrixF2& rhs)const
{
	return *this + rhs; // F_2
}

SquareMatrixF2 SquareMatrixF2::get_transpose()const
{
	SquareMatrixF2 m{get_size()};
	for (int row = 0; row < get_size(); ++row) {
		for (int col = 0; col < get_size(); ++col) {
			m.set(col, row, get(row, col));
		}
	}
	return m;
}

void SquareMatrixF2::swap_rows(const int row1, const int row2)
{
	for (int col = 0; col < get_size(); ++col) {
		char a = get(row1, col);
		char b = get(row2, col);
		set(row1, col, b);
		set(row2, col, a);
	}	
}

void SquareMatrixF2::add_rows(const int addto, const int addfrom)
{
	for (int col = 0; col < get_size(); ++col) {
		set(addto, col, get(addto, col) ^ get(addfrom, col));
	}	
}

std::ostream& operator<<(std::ostream& o, SquareMatrixF2 m)
{
	for (int row = 0; row < m.get_size(); ++row) {
		for (int col = 0; col < m.get_size() - 1; ++col) {
			o << int(m.get(row, col)) << ", ";
		}
		o << int(m.get(row, m.get_size() - 1)) << "\n";
	}
	return o;
}


// Actual algorithm

SquareMatrixF2 berlekamp_Q_matrix(const PolyF2& u)
{
	int num_coeffs = u.get_degree();
	SquareMatrixF2 Q{num_coeffs};
	PolyF2 p{1};
	auto coeffs = p.get_coefficients(num_coeffs);
	for (int i = 0; i < num_coeffs; ++i) {
		Q.set(0, i, coeffs[i]);
	}
	for (int k = 1; k < num_coeffs; ++k) {
		p = p * PolyF2{0,0,1};
		p = p % u;
		auto coeffs = p.get_coefficients(num_coeffs);
		for (int i = 0; i < num_coeffs; ++i) {
			Q.set(k, i, coeffs[i]);
		}
	}
	return Q;
}

// Rteurns a list of vectors in the null space of (Q-I)^T
std::vector<std::vector<char>> berlekamp_null(const SquareMatrixF2& Q)
{
	auto A = (Q - SquareMatrixF2::identity(Q.get_size())).get_transpose();
	// Gaussian elimination
	int identity_index = 0;
	std::vector<int> copy_id; // Which columns contain a copy of the identity?
	for (int colindex = 0; colindex < Q.get_size(); ++colindex) {
		// Move rowindex to the first non-zero entry in this column
		int rowindex = identity_index;
		while ( rowindex < Q.get_size() and A.get(rowindex, colindex) == 0 ) {
			rowindex += 1;
		}
		if ( rowindex == Q.get_size() ) { continue; }
		// Swap rows and add down to eliminate
		A.swap_rows(rowindex, identity_index);
		for (int row = 0; row < Q.get_size(); ++row) {
			if ( row != identity_index and A.get(row, colindex) == 1 ) {
				A.add_rows(row, identity_index);
			}
		}
		// Next loop
		copy_id.push_back(colindex);
		++identity_index;
	}
	// Now we'll solve Au = 0
	std::vector<std::vector<char>> basis;
	for (int k = 0; k < Q.get_size(); ++k) {
		if ( std::find(copy_id.begin(), copy_id.end(), k) != copy_id.end() )
		{
			continue; // If k in copy_id then next loop
		}
		std::vector<char> vec(Q.get_size());
		vec[k] = 1;
		for (decltype(copy_id.size()) i = 0; i < copy_id.size(); ++i) {
			vec[ copy_id[i] ] = A.get(static_cast<int>(i), k);
		}
		basis.push_back(vec);
	}
	return basis;
}



std::vector<PolyF2> berlekamp(const PolyF2& u)
{
	if ( u.get_degree() <= 1 ) {
		return std::vector<PolyF2>{u};
	}
	// Make matrix and find basis of nullspace in polynomials
	auto Q = berlekamp_Q_matrix(u);
	auto basis = berlekamp_null(Q);
	std::vector<PolyF2> nullspace;
	for (const auto& vec : basis) {
		nullspace.push_back( PolyF2(vec) );
	}
	// GCD magic
	std::vector<PolyF2> factors{u};
	int k = 1;
	while ( factors.size() < nullspace.size() ) {
		std::vector<PolyF2> newfactors;
		for (int s : {0,1}) {
			for (const auto& w : factors) {
				auto ww = w.gcd(nullspace[k] - PolyF2{s});
				if ( ww != PolyF2{1} ) {
					newfactors.push_back(ww);
				}
			}
		}
		factors = newfactors;
		k += 1;
	}
	return factors;
}





// Test code

bool is_poly_prime(const PolyF2& p)
{
	for (int deg = 1; deg < p.get_degree(); ++deg) {
		for (int n = 2; n < (1 << (deg+1)); ++n) {
			std::vector<char> coeffs;
			for (int k = 0; k < deg+1; ++k) {
				coeffs.push_back( (n>>k) & 1 );
			}
			auto q = PolyF2(coeffs);
			if ( (p % q).is_zero() ) {
				std::cout << p << " == " << q << " * " << p/q << "\n";
				return false;
			}
		}
	}
	return true;
}

#include <random>
#include <functional>

int test()
{
	PolyF2 p;
	std::cout << "Zero polynomial: " << p << std::endl;
	p = PolyF2{1,0,1,1};
	std::cout << p << " has degree " << p.get_degree() << std::endl;
	PolyF2 q{1,1};
	std::cout << q << " has degree " << q.get_degree() << std::endl;
	std::cout << "Difference is: " << p-q << std::endl;
	std::cout << "Sum is: " << q+p << std::endl;
	std::cout << "Product is: " << p*q << std::endl;
	std::cout << "Product is: " << q*p << std::endl;
	auto quotrem = p.divmod(q);
	std::cout << "p/q = " << quotrem.first << " rem " << quotrem.second << std::endl;
	std::cout << "Formal derivative of p is " << p.derivative() << std::endl;
	std::cout << "gcd(p,q) = " << p.gcd(q) << std::endl;
	auto p1 = p * PolyF2{1,0,1,1};
	std::cout << "gcd = " << p1.gcd(q * PolyF2{1,0,1,1}) << " should be " << PolyF2{1,0,1,1} << std::endl;

	auto m = SquareMatrixF2::identity(3);
	std::cout << "3x3 identity:\n" << m;
	SquareMatrixF2 n{2};
	n.set(0,1,1);
	std::cout << "Test matrix:\n" << n;
	std::cout << "Addition:\n" << m+n << "and again:\n" << n+m;
	m.swap_rows(1,2);
	std::cout << "3x3 identity, rows 1,2 swapped:\n" << m;
	m.add_rows(1,2);	
	std::cout << "Now add row 2 to row 1:\n" << m;

	auto Q = berlekamp_Q_matrix( PolyF2{0,1,0,1} );
	std::cout << "Berlekamp matrix:\n" << Q;
	Q = SquareMatrixF2(3);
	Q.set(0,0,1); Q.set(1,1,1);
	std::cout << "Test matrix:\n" << Q;
	auto basis = berlekamp_null(Q);
	std::cout << "Will become:\n" << (Q - SquareMatrixF2::identity(Q.get_size())).get_transpose();
	std::cout << "Basis of null space:\n";
	for (const auto& vec : basis) {
		for (const auto& x : vec) { std::cout << int(x) << ", "; }
		std::cout << "\n";
	}
	
	std::cout << "Should get X^3+X^2+1 and X^5+X^3+1:\n";
	auto f = factor( PolyF2{1,0,1,1} * PolyF2{1,0,0,1,0,1} );
	for (const auto& factor : f) {
		std::cout << factor << "\n";
	}
	
	std::cout << "Factorisation of X^2+1:\n";
	f = factor( PolyF2{1,0,1} );
	for (const auto& factor : f) {
		std::cout << factor << "\n";
	}
	std::cout << "Even terms:" << PolyF2{1,0,1}.extract_even_terms() << "\n";
	
	std::cout << "Factorisation of X+1:\n";
	f = factor( PolyF2{1,1} );
	for (const auto& factor : f) {
		std::cout << factor << "\n";
	}
	
	std::mt19937 gen;
	std::uniform_int_distribution<int> dist(0,1);
	auto random_bits = std::bind(dist, gen);
	for (int i = 0; i < 1000; ++i) {
		std::vector<char> coeffs;
		for (int j = 0; j < 10; ++j) { coeffs.push_back(random_bits()); }
		PolyF2 p1(coeffs);
		for (int j = 0; j < 10; ++j) { coeffs.push_back(random_bits()); }
		PolyF2 p2(coeffs);
		auto factors = factor(p1 * p2);
		for (const auto& factor : factors) {
			if ( !is_poly_prime(factor) ) {
				std::cout << "Polynomial not prime! " << factor << "\n";
				return 1;
			}
		}
		PolyF2 p{1};
		for (const auto& factor : factors) {
			p = p * factor;
		}
		if ( p != p1 * p2 ) {
			std::cout << "Factors don't multiply!\n";
			std::cout << p << "\n";
			std::cout << p1*p2 << "\n";
			for (const auto& factor : factors) {
				std::cout << factor << "\n";
			}
			return 1;		
		}
		std::cout << i << " ";
	}
	return 0;
}




#include <chrono>

/** Template function to do simple timing: best used with a lambda. */
template<typename Func>
double timeit(int loops, Func func)
{
	std::chrono::steady_clock::time_point t1,t2;
	t1 = std::chrono::steady_clock::now();
	for (int n=0; n<loops; ++n) {
		func();
	}
	t2 = std::chrono::steady_clock::now();
	std::chrono::duration<double> time_span;
	time_span = std::chrono::duration_cast<std::chrono::duration<double>>(t2 - t1);
	return time_span.count() / static_cast<double>(loops);
}

int main()
{
	//test();
	PolyF2 p{0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1,
		1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0,
		1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0,
		1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
		0, 1, 0};
	for (auto& x : factor(p)) {
		std::cout << x << "\n";
	}
	std::cout << "Time:" << timeit(10000, [&p]{ factor(p); }) << "\n";
}
