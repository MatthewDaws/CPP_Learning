	.file	"minimal.cpp"
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4,,15
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1095:
	.seh_endprologue
	movl	%edx, %eax
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB2009:
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	jmp	_ZNSt8ios_base4InitD1Ev
	.seh_endproc
	.p2align 4,,15
	.globl	_Z14is_prime_floaty
	.def	_Z14is_prime_floaty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14is_prime_floaty
_Z14is_prime_floaty:
.LFB1841:
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
	js	.L4
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%rcx, %xmm7
.L5:
	sqrtsd	%xmm7, %xmm6
	movl	$2, %ebx
	jmp	.L6
	.p2align 4,,10
.L17:
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rbx, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.L15
.L10:
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rbx
	testq	%rdx, %rdx
	je	.L13
	addq	$1, %rbx
.L6:
	ucomisd	%xmm6, %xmm6
	movapd	%xmm6, %xmm0
	jp	.L16
.L8:
	testq	%rbx, %rbx
	jns	.L17
	movq	%rbx, %rdx
	movq	%rbx, %rax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jae	.L10
.L15:
	movaps	48(%rsp), %xmm6
	movl	$1, %eax
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L13:
	movaps	48(%rsp), %xmm6
	xorl	%eax, %eax
	movaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L4:
	movq	%rcx, %rax
	movq	%rcx, %rdx
	pxor	%xmm7, %xmm7
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm7
	addsd	%xmm7, %xmm7
	jmp	.L5
.L16:
	movapd	%xmm7, %xmm0
	movq	%rcx, 40(%rsp)
	call	sqrt
	movq	40(%rsp), %rcx
	jmp	.L8
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
.LFB1842:
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
	movl	$20, %esi
	movabsq	$1125899906842553, %rbx
	call	__main
	movsd	.LC1(%rip), %xmm7
	movsd	.LC0(%rip), %xmm6
	.p2align 4,,10
.L24:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movl	$3, %ecx
	movq	%rax, %rdi
	jmp	.L20
	.p2align 4,,10
.L37:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	ucomisd	%xmm0, %xmm6
	jb	.L36
.L20:
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	testq	%rdx, %rdx
	je	.L30
	addq	$1, %rcx
	jns	.L37
	movq	%rcx, %rdx
	movq	%rcx, %rax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm6
	jae	.L20
.L36:
	movl	$1, %ebp
.L19:
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
	jne	.L23
.L29:
	subl	$1, %esi
	jne	.L24
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
.L30:
	xorl	%ebp, %ebp
	jmp	.L19
	.p2align 4,,10
.L23:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movabsq	$1125899906842553, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	movl	$10, %r8d
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbp
	testq	%rbp, %rbp
	je	.L38
	cmpb	$0, 56(%rbp)
	je	.L27
	movsbl	67(%rbp), %edx
.L28:
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	jmp	.L29
	.p2align 4,,10
.L27:
	movq	%rbp, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %edx
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rax
	cmpq	%rcx, %rax
	je	.L28
	movq	%rbp, %rcx
	call	*%rax
	movsbl	%al, %edx
	jmp	.L28
.L38:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z14is_prime_floaty;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z14is_prime_floaty
_GLOBAL__sub_I__Z14is_prime_floaty:
.LFB2010:
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
	.long	-284
	.long	1098907647
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 4.9.2"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIyEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
