@mainpage Simple timer class and template

These are two ways to time snippets of code.

`time_snippet` is an abstract base class: publically inherit it and overload `work()`
to time.  Various functions to time a number of loops, or automatically choose how
many loops to run so the whole process takes at least a second.

`timeit` is a simple template: call as `timeit(loops,func)` where `loops` is the number
of loops, and `func` is a function object.  Most easily used with a lambda to call the
actual function (with parameters) you want.

--------------------------------

You have to be very careful with compiler optimisations.  `work()` returns an `int`.
Nothing is done with this, but if we have `void work()` and change the overloaded
function from

    int work() { return whatever(param); }

to

    void work() { whatever(param); }

then the compiler, at -O1 or better (gcc 4.8.2) optimises this away, if `whatever` is
a sufficiently simple function.  Seemingly this will happen whenever `whatever` doesn't
call any external functions: presumably the compiler can work out that there are no
side effects.  Allocating a `vector` and using it forces the whole function to be
executed, probably because memory is being written, and the compiler can't know if
this might have a side effect.

What I don't fully understand is why the "trick" of returning a value works with even
the template `timeit`.  Actually, it's quite easy to break: changing
    [&t]() { t.work(); }
to
    []() { sum(); }
does the trick!  So just removing one level of indirection allows the compiler to
optimise the test away (and, I would conjecture, other compilers might notice that
even the 1st case can be optimised).

It will hopefully be clear from the results if the readings are plausible or not
(without resorting to reading assembly files...)