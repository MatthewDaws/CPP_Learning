// Copyright (c) 2014 Bartosz Szczesny <bszcz@bszcz.org>
// This program is free software under the MIT license.

// -std=c++11

#include <iomanip>
#include <iostream>
using namespace std;

class Fibo {
public:
	Fibo(const int N_) : N(N_) {
		if (N < 0) {
			N = 0; // or throw an exception
		}
	}

	int get() const {
		return fn_now;
	}

	bool operator()() {
		int fn;
		return (*this)(fn);
	}

	bool operator()(int& fn) {
		if (n > 1) {
			int fn_sum = fn_now + fn_old;
			fn_old = fn_now;
			fn_now = fn_sum;
		} else if (n == 1) {
			fn_now = f1;
			fn_old = f0;
		} else {
			fn_now = f0;
		}

		fn = fn_now;

		n++;
		return (n <= N);
	}

private:
	static const int f0 = 0; // or 1
	static const int f1 = 1;
	int fn_old = 0;
	int fn_now = 0;
	int n = 0;
	int N;
};

void show() {
	const int N = 13;

	cout << "for i  : ";
	Fibo fibo1(N);
	for (int i; fibo1(i);) {
		cout << i << ", ";
	}
	cout << endl;

	cout << "for    : ";
	for (Fibo fibo(N); fibo();) {
		cout << fibo.get() << ", ";
	}
	cout << endl;

	cout << "while  : ";
	Fibo fibo2(N);
	while (fibo2()) {
		cout << fibo2.get() << ", ";
	}
	cout << endl;
}

void test() {
	for (int i = -1; i < 5; i++) {
		cout << "test" << setw(3) << i << ": ";
		for (Fibo fibo(i); fibo();) {
			cout << fibo.get() << ", ";
		}
		cout << endl;
	}
}

int main(void) {
	show();
	test();
	return 0;
}
