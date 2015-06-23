## BF Interpreter ##

A [BF](https://en.wikipedia.org/wiki/Brainfuck) interpreter in C++.  Okay, so you can do this (slightly unsafely) in less than 20 lines of C code... but this is an over-engineered C++ version.

   - [IPython notebook version](http://nbviewer.ipython.org/github/MatthewDaws/CPP_Learning/blob/master/bf_interpreter/BF%20Interpreter.ipynb) is a "pure" interpreter, but slow, as it searched for jump positions.
   - The C++ version has a parse stage, which makes a single pass through the source code, converting to an internal (class based) representation.  I took a little effort to separate the parsing stage from the execution stage.  We use a command pattern for the actual execution.  This implementation just uses memory buffers for input/output.
   - There are two versions of the parser: the 2nd one does a little more manual memory handling, and a little more parsing (converts e.g. "+++" into an internal representation of "three lots of +").