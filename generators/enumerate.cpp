// Example of using iterators in C++ to approximate the `enumerate` keyword
// in Python.  Allows you to write:
//
//	std::vector<int> test;
// ...
//	for (auto i : enumerate(test)) {
//		std::cout << i << " --> " << test[i] << std::endl;
//	}
//
// This version is not perfect, as the "range" hack below doesn't work.
//
// See enumerate2.cpp for a better implementation.

// As ever StackOverflow has some info:
// e.g. http://stackoverflow.com/questions/7562356/c11-foreach-syntax-and-custom-iterator

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
	SizeType operator++(int) { auto old = index; ++index; return old; }
	SizeType operator++() { return ++index; }
	bool operator==(EnumIter<SizeType> other)const { return index == other.index; }
	bool operator!=(EnumIter<SizeType> other)const { return index != other.index; }
};

template <typename ContainerType>
class EnumClass {
private:
	const ContainerType& container;
public:
	EnumClass(const ContainerType& cont) : container{cont} {}
	using SizeType = decltype(container.size());
	EnumIter<SizeType> begin()const { return EnumIter<SizeType>{0}; }
	EnumIter<SizeType> end()const {
      std::cout << "container.size() call" << std::endl;
      return EnumIter<SizeType>{container.size()}; }
};

template <typename ContainerType>
auto enumerate(const ContainerType& cont) -> EnumClass<ContainerType>
{
	return EnumClass<ContainerType>(cont);
}

// DANGER: This doesn't work correctly!
// In the example below, the temporary range object is destroyed before
// the call to `EnumClass.end()` uses it, and it's only luck that the
// code works.
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
