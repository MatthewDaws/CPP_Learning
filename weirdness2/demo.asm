	.file	"demo.cpp"
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
	.globl	_Z12is_prime_inty
	.def	_Z12is_prime_inty;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12is_prime_inty
_Z12is_prime_inty:
.LFB1841:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	testq	%rcx, %rcx
	js	.L3
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
.L4:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L19
.L5:
	vmovsd	.LC0(%rip), %xmm1
	vucomisd	%xmm1, %xmm0
	jae	.L9
	vcvttsd2siq	%xmm0, %r9
.L10:
	cmpq	$1, %r9
	jbe	.L14
	testb	$1, %cl
	je	.L16
	movl	$2, %r8d
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
.L14:
	movl	$1, %eax
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L9:
	movabsq	$-9223372036854775808, %rax
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2siq	%xmm0, %r9
	xorq	%rax, %r9
	jmp	.L10
	.p2align 4,,10
.L16:
	xorl	%eax, %eax
	addq	$56, %rsp
	ret
	.p2align 4,,10
.L3:
	movq	%rcx, %rax
	movq	%rcx, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L4
.L19:
	testq	%rcx, %rcx
	js	.L7
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
.L8:
	movq	%rcx, 40(%rsp)
	call	sqrt
	movq	40(%rsp), %rcx
	jmp	.L5
.L7:
	movq	%rcx, %rax
	movq	%rcx, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
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
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movl	$5, %esi
	movabsq	$1125899906842553, %rbx
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rdi
	vmovsd	.LC1(%rip), %xmm6
	movq	%rdi, %rbp
.L25:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movl	$2, %r8d
	movq	%rax, %r12
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
	movl	$1, %r13d
.L22:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rdi, %rcx
	subq	%r12, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vdivsd	%xmm6, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testb	%r13b, %r13b
	jne	.L24
.L27:
	subl	$1, %esi
	jne	.L25
	vmovaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4,,10
.L28:
	xorl	%r13d, %r13d
	jmp	.L22
	.p2align 4,,10
.L24:
	movabsq	$1125899906842553, %rdx
	movq	%rbp, %rcx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	jmp	.L27
	.seh_endproc
	.p2align 4,,15
	.def	_GLOBAL__sub_I__Z12is_prime_inty;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z12is_prime_inty
_GLOBAL__sub_I__Z12is_prime_inty:
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
	.quad	_GLOBAL__sub_I__Z12is_prime_inty
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1138753536
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
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
