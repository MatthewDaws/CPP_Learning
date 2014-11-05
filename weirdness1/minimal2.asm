	.file	"minimal.cpp"
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_Z14is_prime_floaty
	.def	_Z14is_prime_floaty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14is_prime_floaty
_Z14is_prime_floaty:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$80, %rsp
	.seh_stackalloc	80
	movaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	movaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	testq	%rcx, %rcx
	js	.L3
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%rcx, %xmm7
.L4:
	sqrtsd	%xmm7, %xmm6
	movl	$2, %ebx
	jmp	.L5
	.p2align 4,,10
.L16:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.L14
.L9:
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rbx
	testq	%rdx, %rdx
	je	.L12
	addq	$1, %rbx
.L5:
	ucomisd	%xmm6, %xmm6
	movapd	%xmm6, %xmm0
	jp	.L15
.L7:
	testq	%rbx, %rbx
	jns	.L16
	movq	%rbx, %rdx
	movq	%rbx, %rax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.L9
.L14:
	movaps	48(%rsp), %xmm6
	movl	$1, %eax
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L12:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L3:
	movq	%rcx, %rax
	movq	%rcx, %rdx
	pxor	%xmm7, %xmm7
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm7
	addsd	%xmm7, %xmm7
	jmp	.L4
.L15:
	movapd	%xmm7, %xmm0
	movq	%rcx, 40(%rsp)
	call	sqrt
	movq	40(%rsp), %rcx
	jmp	.L7
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "   \0"
.LC3:
	.ascii " is prime.\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$72, %rsp
	.seh_stackalloc	72
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movl	$3, %esi
	movabsq	$1152921504606846697, %rbx
	call	__main
	movsd	.LC1(%rip), %xmm7
	movsd	.LC0(%rip), %xmm6
.L23:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movl	$3, %ecx
	movq	%rax, %rdi
	jmp	.L19
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
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
.L31:
	movl	$1, %ebp
.L18:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	pxor	%xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	subq	%rdi, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm7, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testb	%bpl, %bpl
	jne	.L22
.L25:
	subl	$1, %esi
	jne	.L23
	movaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L26:
	xorl	%ebp, %ebp
	jmp	.L18
	.p2align 4,,10
.L22:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movabsq	$1152921504606846697, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	jmp	.L25
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z14is_prime_floaty;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z14is_prime_floaty
_GLOBAL__sub_I__Z14is_prime_floaty:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	addq	$40, %rsp
	jmp	atexit
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z14is_prime_floaty
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-1
	.long	1104150527
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.ident	"GCC: (x86_64-posix-sjlj-rev1, Built by MinGW-W64 project) 4.9.1"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
