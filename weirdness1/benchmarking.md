Weirdness with benchmarking
===========================

Some thoughts on the difficulty of benchmarking, especially when considering rather artificial,
very small loops.


Turbo Boost is a pain
---------------------

[Intel Turbo Boost](http://en.wikipedia.org/wiki/Intel_Turbo_Boost) means that my processor runs
quicker if only one core is loaded, and/or if the processor is particularly cool.
I have a [i5-3210m](http://ark.intel.com/products/65708) which runs at a nominal 2.5GHz, but
can turbo up to 3.1GHz.  From using [CPU-Z](http://www.cpuid.com/softwares/cpu-z.html) it seems
that usually it runs at 2.9GHz, occasionally getting to 3.1GHz (there appears to be an active
dislike of 3.0GHz).

So even for a single-threaded application, occasionally the processor runs about
[6% faster](http://math.stackexchange.com/questions/27202/what-does-x-faster-mean)
or runs in 94% of the time.  Get the laptop too hot, and it gets even worse.

For multi-threaded code, see further discussion at another time.

For the rest of this discussion, I disabled turbo-boost and ran the processor at 2.5GHz.




Compiler Weirdness
------------------

This is using g++ 4.9.1, mingw-264, Windows 7.
I originally ran into this problem with the `async-prime.cpp` file,
but narrowed it down to an easier test case, which is detailed here.

Consider `minimal.cpp`: it consists of a very simple trial division algorithm for primality
testing (very simple, as it not even testing for evenness explcitly, etc.)  Let's look at the first
implementation:

```CPP
using nt = unsigned long long;
bool is_prime_float(nt num)
{
	for (nt n=2; n<=sqrt(num); ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}
```

Looking at `n<=sqrt(num)`, what happens is that the `n` gets promoted to a double, and then
compared to `sqrt(num)`.  Looking at the (complicated) assmebler code confirms this.  This is
probably not sensible, so the second version computes the integer version of `sqrt(num)` (which
the compiler precomputes in this example):

```CPP
bool is_prime_int(nt num)
{
	nt limit = sqrt(num);
	for (nt n=2; n<=limit; ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}
```

A final version re-codes this as a while loop, which at least to my human intuition, gives
a "hint" that we expect the loop to continue (i.e. `return false` should be the exception,
not the rule):

```CPP
bool is_prime_while(nt num)
{
	nt n=2;
	nt limit = sqrt(num);
	while ( n<=limit and (num%n)!=0 ) { ++n; }
	if ( n>limit ) { return true; }
	return false;
}
```

Right, let's compare some different compiler flags.  If I understand the g++ documentation
correctly, then `-Ofast` should be equivalent to `-O3` with some possibly "unsafe" floating-point
optimisations.

Floating-point compare:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  13.2
  -O3                                  |  11.8
  -Ofast -mtune=native -march=native   |  11.9
  -O3 -mtune=native -march=native      |  11.9
  -mtune=native -O2                    |  12.6

Integer compare, get:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  12.8
  -O3                                  |  12.8
  -Ofast -mtune=native -march=native   |  12.8
  -O3 -mtune=native -march=native      |  12.8
  -mtune=native -O2                    |  12.3  (!!)

While loop version, get:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  12.8
  -O3                                  |  12.8
  -Ofast -mtune=native -march=native   |  12.8
  -O3 -mtune=native -march=native      |  12.8
  -mtune=native -O2                    |  12.3  (!!)

So, what on Earth is going on here?  The "odd" things are that -Ofast is noticably _slower_ for
the float-point compare version, and -O2 is faster for the integer compare versions.

Even weirder is the following: if I comment out the second two functions, and run the floating-point
test again, we get

Floating-point compare, redux:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  11.8
  -O3                                  |  13.2
  -Ofast -mtune=native -march=native   |  13.0
  -O3 -mtune=native -march=native      |  13.0
  -mtune=native -O2                    |  12.6

Erm... so, with the same actual code being compiled, we get a reversal of how -Ofast and -O3 perform.
If we look at the produced assembler code, then the `is_prime` is being inlined, and there does not
appear to be any difference between the inlined code.  This behaviour does not occur for the other
functions.

If I assemble the assembly output, and then link, we get the same behaviour, so this isn't a weird
compiler thing.  But this gives us the opportunity to fiddle with the assembly output, and I can
then recreate the behaviour.  This is of course only a _conjecture_ as to what's going on.  The key
is the odd assembler directive `.p2align 4,,10`, see
[as documentation](https://sourceware.org/binutils/docs/as/P2align.html).
So this is an alignment thing-- I'm vaguely surprised this is really needed on modern processors,
but there we go.

So, what is `.p2align 4,,10` doing?  It is trying to align the next instruction to a 16-byte
boundary (`16 = 2^4`).  It does this by padding with `nop` instructions (or "multi-byte nops").
However, the `10` at the end means that it will only do this is a maximum of 10 bytes of padding:
if more are needed, it does nothing.  We might need as many as 15 bytes of padding, of course, so
I guess this is a hedge: pad if possible, but don't waste too much space to do so.

So, I fiddle with these `p2align` commands, assemble, and compile.  We find some further extremely
weird behaviour:

   * For `-Ofast`, the `.p2align 4,,10` has no effect, as more than 10 bytes of padding would be
needed.  However, the resulting loop runs quickly.
   * For `-O3`, the `.p2align 4,,10` has no effect, as more than 10 bytes of padding would be
needed.  However, the resulting loop runs slowly.  Changing the command to `.p2align 4,,15`
makes the loop run quickly (same speed as `-Ofast`).
   * For `-Ofast`, changing to `.p2align 4,,15` has the opposite effect: it makes the code run
slowly!
   * Run `objdump -d min1.exe > min1_all.asm` to get a dump of the actual EXE file.  The only important
difference seems to be that the main loop for the `-Ofast` version is located at absolute offset
0x402ef0, while for `-O3` it's located at 0x402f50.
   * This indeed seems to be important.  If I add nonsense code to the end of the function
`_Z14is_prime_floaty` in `minimal2.asm`, so as to move the absolute offset of the `main` function,
then I can recreate the same behaviour.
   * Working with the `-O3` output, instead of using the `.p2align` instruction, manually add `nop`
instructions: note that these come after a `jmp` and so are never executed.
      * For 1-6 nops there is no change, 13.2 secs
      * For 7-10, we get 12.3 secs
      * For 11-19, we get 11.8 secs.    Note that 11 nops aligns to a 16-byte boundary, i.e. has the same effect
as `.p2align 4,,`
      * For 20-38, back to 13.2 secs.
      * For 39-42, get 12.3 secs.
      * For 43-51, back to 11.8 secs
      * For 52-, back to 13.2 secs
      * Seem to be on a 32 byte loop

Reverse engineer what the compiler is doing
-------------------------------------------

The critical loop in `minimal2.asm` is the following.  The setup has:
```
ECX = 3
RBX = 1152921504606846697 (prime to be tested)
XMM6 = load memory initialised to:
    .long	-1
    .long	1104150527
```
Form staring hard at the non-inlined version (see `_Z14is_prime_floaty:`) we find that XMM6 is set to the square-root of the prime.

The entry point to this inner loop is `L19`.
```
.L32:
    --- Finish if XMM6 < RCX ---
	pxor	%xmm0, %xmm0           Zero XMM0
	cvtsi2sdq	%rcx, %xmm0       Convert RCX to double in XMM0
	ucomisd	%xmm0, %xmm6        Compare XMM6 - XMM0
	jb	.L31                     If less than zero, skip
.L19:
    --- This block checks if RBX % RCX == 0 ---
	xorl	%edx, %edx             Zero EDX
	movq	%rbx, %rax             Move RBX to RAX
	divq	%rcx                   Divide by RCX
	testq	%rdx, %rdx            Is RDX = 0 ?
	je	.L26                     If so, then not prime, so exit
    --- ++RCX and jump back to L32 if RCX<0  (which is never??) ---
	addq	$1, %rcx               Increase RCX (sign bit==1 iff RCX < 0)
	jns	.L32                    If sign bit set jump back to L32
    --- RDX = (RCX / 2) + ( RCX & 1 ) ---
    --- That is, halve RCX but round _up_ ---
	movq	%rcx, %rdx             Move RCX to RDX
	movq	%rcx, %rax             Move RCX to RAX
	pxor	%xmm0, %xmm0           Zero XMM0
	shrq	%rdx                   Divide RDX by 2
	andl	$1, %eax               Logical and EAX with 1
	orq	%rax, %rdx              RDX = RDX or RAX
    --- XMM0 = RDX as double, and then XMM0 += XMM0
    --- Overall effect is: if RCX even then XMM0 = RCX;
    ---    if RCX odd then XMM0 = RCX+2
    --- insane way to do this! ---
	cvtsi2sdq	%rdx, %xmm0       Convert RDX to double in XMM0
	addsd	%xmm0, %xmm0          XMM0 += XMM0
    --- If XMM6 >= XMM0 then jump back to L19 ---
	ucomisd	%xmm0, %xmm6        Compare XMM6 - XMM0
	jae	.L19                    If >=0 then jump to L19
.L31
```

So I think this might be a compiler bug:

* Why the insane way to calculate XMM0 = RCX + ( RCX&1==1 ? 2 : 0)   ??
* The real inner loop is L19; so why not align this??
* The `jns .L32` command breaks the rules: I think this is never taken, but it's a conditional jump backwards, so a static branch predictor will always get this wrong.  (But Core architecture processors shouldn't use this...) 

With no `nop`s the label `.L19` is at offset 0x2fa4.  So the above timings translate into:

* Offset 0x2fa4 -- 0x2faa    13.2secs
* Offset 0x2fab -- 0x2fae    12.3secs
* Offset 0x2faf -- 0x2fb7    11.8secs
* Offset 0x2fb8 -- 0x2fc4    13.2secs

TODO
----

   * Investigate which jumps might be becoming unaligned in this.
   * Recreate on linux?  With Visual C++?






For kicks, on an ATOM N455
--------------------------

Testing a somewhat smaller prime, using g++ 4.8.1 on the old mingw (32), I get

Floating point version:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  2.26
  -O3                                  |  2.48
  -Ofast -mtune=native -march=native   |  2.39
  -O3 -mtune=native -march=native      |  2.62
  -mtune=native -O2                    |  2.78

Integer version:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  1.84
  -O3                                  |  1.84
  -Ofast -mtune=native -march=native   |  1.84
  -O3 -mtune=native -march=native      |  1.84
  -mtune=native -O2                    |  1.90

While loop version:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  1.84
  -O3                                  |  1.84
  -Ofast -mtune=native -march=native   |  1.84
  -O3 -mtune=native -march=native      |  1.84
  -mtune=native -O2                    |  1.86

So, much more reasonable numbers!  Finally, the integer version, compiled on the atom, but then run
on the i5:

  Compiler flags                       |  Time (seconds, 3sf)
  ------------------------------------ | ---
  -Ofast                               |  10.8
  -O3                                  |  11.6
  -Ofast -mtune=native -march=native   |  10.8
  -O3 -mtune=native -march=native      |  11.2
  -mtune=native -O2                    |  11.6

Now, the _extraordinary_ thing here is that this is testing the _same_ prime as above
(1152921504606846697) but we compiled this on a 32-bit machine, so we're emulating 64-bit
arithmetic in software (as a check of the assmebler output shows).  And yet it's faster!
I can't explain this...


Assembler output
----------------

With -Ofast flags, the key inner loop is:

```
	.p2align 4,,10
.L29:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	comisd	%xmm0, %xmm6
	jb	.L28
.L16:
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	testq	%rdx, %rdx
	je	.L23
	addq	$1, %rcx
	jns	.L29
	movq	%rcx, %rdx
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	comisd	%xmm0, %xmm6
	jae	.L16
```

With -O3 flags:
```
	.p2align 4,,10
.L32:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	ucomisd	%xmm0, %xmm6
	jb	.L31
.L19:
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	testq	%rdx, %rdx
	je	.L26
	addq	$1, %rcx
	jns	.L32
	movq	%rcx, %rdx
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm6
	jae	.L19
```


What the files are
------------------

Filename | Description
--- | ---
`make#.bat` | convenience batch files
`minimal.cpp` | C++ source file
`minimal#.asm` | ASM output from g++ for various compiler flags
`minimal#.exe` | Ditto, but linked to EXE file
`min#.o` | Output from assembler when passed minimal#.asm
`min#.exe` | Linked version of above
`min#_all.asm` | Output from `objdump` applied to `min#.exe`


Useful links
------------

Various Useful links:

    * [Intel Optimisation Manual](http://www.intel.co.uk/content/www/uk/en/architecture-and-technology/64-ia-32-architectures-optimization-manual.html)
    * [Useful StackOverflow post](http://stackoverflow.com/questions/18113995/performance-optimisations-of-x86-64-assembly-alignment-and-branch-prediction)
    * [p2align doc](https://sourceware.org/binutils/docs/as/P2align.html)