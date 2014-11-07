# Trying again with an easier loop #

(Note: have now moved to g++ 4.9.2 not 4.9.1 so there might be minor changes with e.g. line numbers in assembler output.)

This is a follow-on from before, with now a simple integer-only testing loop:

```
bool is_prime_int(nt num)
{
	nt limit = sqrt(num);
	for (nt n=2; n<=limit; ++n) {
		if ( (num%n)==0 ) { return false; }
	}
	return true;
}
```

With `g++ -std=c++11 -march=native -mtune=native -O3 -S demo.cpp -o demo.asm` on my machine, this compiles to the following inner-loop:

```
	jmp	.L21
	.p2align 4,,10
.L23:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r8
	testq	%rdx, %rdx
	je	.L28
.L21:
	addq	$1, %r8
	cmpq	$33554432, %r8
	jne	.L23
```

Again, the label .L28 is an exit corresponding to finding a zero remainder (and hence the number not being prime).  The Intel optimisation manual says:

>Arrange code to be consistent with
the static branch prediction algorithm: make the fall-through code following a conditional branch be the
likely target for a branch with a forward target, and make the fall-through code following a conditional
branch be the unlikely target for a branch with a backward target. 

This seems correct here: `je .L28` mostly won't be taken, is a forward branch, and so the fall-through being the default is correct; similarly `jne .L23` mostly will be taken, but has a backward target.

We also have this:

>Avoid putting two conditional branch instructions in a loop so that both have the same branch target
address and, at the same time, belong to (i.e. have their last bytes' addresses within) the same 16-
byte aligned code block.

But this doesn't seem to be applicable here.

Finally, notice again the `.p2align 4,,10` which may or may not do anything, thanks for 10 being smaller than `15 = 2**4 - 1`

## Adding nops ##

The IPython notebook `Run_with_nops` adds nops before the .L23 label.  The end result is terribly boring: not difference at all, with all runs being within 1% of each other.  So I can't recreate the behaviour I saw before with this simple loop.

## -O2 flag ##

From "weirdness1", we found that `-O2` produced actually faster code, for the integer version (that is, the code we're using here).  Again, this happens here: we get a time of about 12.25 (vs 12.86 as below).  The `-O2` flag doesn't inline the function, and if we look at the inner loop, it is:

```
	jmp	.L12
	.p2align 4,,10
.L13:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r8
	testq	%rdx, %rdx
	je	.L16
.L12:
	addq	$1, %r8
	cmpq	%r8, %r9
	jae	.L13
```

The only difference seems to be the `cmpq %r8, %r9` command, which uses a register, not a constant, to compare to...
 

## Async.cpp ##

As a quick application, `async.cpp` uses this with a number of threads.  We get a pleasing result (best of 5):

Time (secs)    | 1 thread | 2 threads | 3 threads | 4 threads
-------------- | -------- | --------- | --------- | ---------
TurboBoost off | 12.86    | 6.259     | 4.399     | 3.416 
TurboBoost on  | 10.46    | 5.321     | 3.767     | 2.906
