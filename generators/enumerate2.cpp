// Example of using iterators in C++ to approximate the `enumerate` keyword
// in Python.  Allows you to write:
//
//	std::vector<int> test;
// ...
//	for (auto i : enumerate(test)) {
//		std::cout << i << " --> " << test[i] << std::endl;
//	}
//
// This version is safer, as it doesn't assume the "container" we pass to
// `enumerate` has a life beyond the call.  This allows us to use any object
// with a method `size()`.


#include <vector>
#include <iostream>

#include <iterator>

template <typename SizeType>
class EnumIter
   : public std::iterator <std::input_iterator_tag, SizeType>
{
private:
	SizeType index;
public:
	EnumIter(SizeType init) : index{init} {}
   const SizeType& operator*() { return index; }
	EnumIter operator++(int) { auto old = *this; ++index; return old; }
	EnumIter& operator++() { ++index; return *this; }
	bool operator==(EnumIter<SizeType> other)const { return index == other.index; }
	bool operator!=(EnumIter<SizeType> other)const { return index != other.index; }
};

template <typename SizeType>
class EnumClass {
private:
	SizeType size;
public:
	EnumClass(const SizeType s) : size{s} {}
	EnumIter<SizeType> begin()const { return EnumIter<SizeType>{0}; }
	EnumIter<SizeType> end()const { return EnumIter<SizeType>{size}; }
};

template <typename ContainerType>
auto enumerate(const ContainerType& cont) -> EnumClass<decltype(cont.size())>
{
	return EnumClass<decltype(cont.size())>(cont.size());
}

class range {
private:
   using numtype = long long;
   numtype mlimit;
public:
   range(const long long limit) : mlimit{limit} {}
   ~range() { std::cout << "range::~range() called." << std::endl; }
   numtype size()const { return mlimit; }
};

int main()
{
	std::vector<int> test;
	for (int i = 0; i < 10; ++i) { test.push_back(i*i); }
	
	for (auto i : enumerate(test)) {
		std::cout << i << " --> " << test[i] << std::endl;
	}
   
   std::cout << "Range test: ";
   for (auto i : enumerate(range(8))) {
      std::cout << i << " ";
   }
   std::cout << std::endl;
}
