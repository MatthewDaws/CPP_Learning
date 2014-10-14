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
	vmovaps	%xmm6, 48(%rsp)
	.seh_savexmm	%xmm6, 48
	vmovaps	%xmm7, 64(%rsp)
	.seh_savexmm	%xmm7, 64
	.seh_endprologue
	testq	%rcx, %rcx
	js	.L3
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdq	%rcx, %xmm7, %xmm7
.L4:
	vsqrtsd	%xmm7, %xmm6, %xmm6
	movl	$2, %ebx
	jmp	.L5
	.p2align 4,,10
.L17:
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rbx, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jb	.L15
.L9:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbx
	testq	%rdx, %rdx
	je	.L12
	addq	$1, %rbx
.L5:
	vucomisd	%xmm6, %xmm6
	vmovapd	%xmm6, %xmm0
	jp	.L16
.L7:
	testq	%rbx, %rbx
	jns	.L17
	movq	%rbx, %rdx
	movq	%rbx, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jae	.L9
.L15:
	movl	$1, %eax
.L13:
	vmovaps	48(%rsp), %xmm6
	vmovaps	64(%rsp), %xmm7
	addq	$80, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L12:
	xorl	%eax, %eax
	jmp	.L13
	.p2align 4,,10
.L3:
	movq	%rcx, %rax
	movq	%rcx, %rdx
	vxorpd	%xmm7, %xmm7, %xmm7
	shrq	%rax
	andl	$1, %edx
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm7, %xmm7
	vaddsd	%xmm7, %xmm7, %xmm7
	jmp	.L4
.L16:
	vmovapd	%xmm7, %xmm0
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
	vmovaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	vmovaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	.seh_endprologue
	movl	$3, %esi
	movabsq	$1152921504606846697, %rbx
	call	__main
	vmovsd	.LC1(%rip), %xmm7
	vmovsd	.LC0(%rip), %xmm6
.L24:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movl	$3, %ecx
	movq	%rax, %rdi
	jmp	.L20
	.p2align 4,,10
.L34:
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rcx, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm6
	jb	.L33
.L20:
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	testq	%rdx, %rdx
	je	.L27
	addq	$1, %rcx
	jns	.L34
	movq	%rcx, %rdx
	movq	%rcx, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm6
	jae	.L20
.L33:
	movl	$1, %ebp
.L19:
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	.refptr._ZSt4cout(%rip), %rcx
	subq	%rdi, %rax
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	vdivsd	%xmm7, %xmm1, %xmm1
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$3, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	testb	%bpl, %bpl
	jne	.L23
.L26:
	subl	$1, %esi
	jne	.L24
	vmovaps	32(%rsp), %xmm6
	xorl	%eax, %eax
	vmovaps	48(%rsp), %xmm7
	addq	$72, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L27:
	xorl	%ebp, %ebp
	jmp	.L19
	.p2align 4,,10
.L23:
	movq	.refptr._ZSt4cout(%rip), %rcx
	movabsq	$1152921504606846697, %rdx
	call	_ZNSo9_M_insertIyEERSoT_
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	jmp	.L26
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
