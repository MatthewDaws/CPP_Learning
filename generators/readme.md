@mainpage 'Generators' and range based for loops

In Python 3.x many "sequence" or "list-like" objects are actually generators,
which can dynamically generate data to be "consumed" by other parts of the
programme.  For example, to produce a Fibonacci sequence, we can write:

    def fib(len):
       a, b = 0, 1
       for n in range(len):
          yield b
          a, b = b, a+b

    for x in fib(10):
       print(x)

This makes use of the `yield` command to make a generator object.

In C++11, we have range based for loops, and so in principle, we should be
able to write something like the following:

    for (auto x : fib(10)) {
       cout << x << endl;
    }

Here `fib` will be a class which implements the iteration protocol: `begin()`
and `end()` statements which return iterators (or at least a class which
behaves like an iterator, minimally implementing `it++`, `it!=eit` and `*it`.)

The files in this directory explore this problem, and I think up with a fairly
nice solution.

-----------------------------------------------------------

`iterators.cpp` explores how range based for loops work, at least in g++.
In particular, the line `for (auto x : fib(10))` is most closely approximated
by something like:

    {
       auto f = fib(10);
       auto it = f.begin();
       auto eit = f.end();
       for (; it != eit; ++it) {
          auto x = *it;
          cout << x << endl;
       }
    }

That is, `begin()` is called before `end()` and `end()` is only called once
(and all objects are destroyed at the end of the block.)

However, before C++11, and even now if you want some control, you would
typically write

    auto f = fib(10);
    for (auto it = f.begin(); it != f.end(); ++it) {
       ...
    }

So, probably class `fib` should cache the end iterator to avoid creating a new
object once per loop.

-----------------------------------------------------------

`gen.cpp` starts the process of writing an abstract base class to abstract much
of the work, much like the `yield` statement does in Python.

We create a `generator` class (and associated iterator) which has a pure virtual
function `next()`.  To use this, we publically import this as a base class, and
implement `next()` to return the next item in our sequence.

-----------------------------------------------------------

`gen_it.cpp` extends `gen.cpp` by templating the code, moving to referencing the
current state via a "pointer to constant", which is more efficient for complex
objects (e.g. strings).  We also inherit from `std::iterator`` and, I hope, end
up with a compliant "input iterator" (perhaps need to define prefix ++ and
`operator=` as well, but both have limited semantic meaning in this context).

-----------------------------------------------------------

`generator.hpp` contains a full implementation of this idea, and
`generator.cpp` shows some examples.

-----------------------------------------------------------

Note that the produced Doxygen documentation is not quite correct, because
both `gen.cpp` and `iterators.cpp` contain a class called `fib`.
Such is life...
