	.file	"main.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%.16llx %.16llx\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"Dist\303\242ncia M\303\255nima %d, Posi\303\247\303\243o %llu"
	.section	.rodata
	.align 32
.LC0:
	.quad	3
	.quad	0
	.quad	131
	.quad	0
	.quad	137
	.quad	0
	.quad	143
	.quad	0
	.quad	145
	.quad	0
	.quad	157
	.quad	0
	.quad	167
	.quad	0
	.quad	171
	.quad	0
	.quad	185
	.quad	0
	.quad	191
	.quad	0
	.quad	193
	.quad	0
	.quad	203
	.quad	0
	.quad	211
	.quad	0
	.quad	213
	.quad	0
	.quad	229
	.quad	0
	.quad	239
	.quad	0
	.quad	241
	.quad	0
	.quad	247
	.quad	0
	.quad	253
	.quad	0
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4796:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$304, %edx
	pushq	-8(%r10)
	leaq	.LC0(%rip), %rsi
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$384, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovaps	%xmm10, -384(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rax, -400(%rbp)
	call	memcpy@PLT
	movl	$76, %edi
	call	malloc@PLT
	vmovdqa	-384(%rbp), %xmm10
	movq	%rbx, %rdx
	leaq	304(%rbx), %r8
	movq	%rax, %rcx
	movl	$63, %edi
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%edi, %ebx
	xorl	%esi, %esi
	addq	$16, %rdx
	lzcntq	-16(%rdx), %rsi
	subl	%esi, %ebx
	addq	$4, %rcx
	movl	%ebx, -4(%rcx)
	cmpq	%r8, %rdx
	jne	.L2
	movl	$1, %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L3:
	addl	-4(%rax,%rdx,4), %ecx
	movl	%edx, %r13d
	addq	$1, %rdx
	cmpl	$62, %ecx
	jle	.L3
	leaq	72(%rax), %rcx
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L4:
	addl	(%rcx), %edx
	addl	$1, %r12d
	subq	$4, %rcx
	cmpl	$62, %edx
	jle	.L4
	movq	%rax, %r11
	movl	$19, %edx
	movl	$1, %r8d
	movq	$0, -408(%rbp)
	shrq	$2, %r11
	movl	%edx, %ebx
	vpxor	%xmm5, %xmm5, %xmm5
	movl	$1, %r10d
	negq	%r11
	vmovdqa	.LC1(%rip), %ymm9
	vpxor	%xmm6, %xmm6, %xmm6
	movl	$0, -392(%rbp)
	andl	$7, %r11d
	vmovdqa	.LC2(%rip), %ymm8
	vmovdqa	.LC3(%rip), %ymm7
	subl	%r11d, %ebx
	movl	%r11d, %edx
	movl	%ebx, %esi
	leaq	(%rax,%rdx,4), %r14
	movl	%ebx, -388(%rbp)
	movl	$1, %edx
	shrl	$3, %esi
	leaq	32(%r14), %r15
	andl	$-8, %ebx
	movl	%esi, -384(%rbp)
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L5:
	addq	$1, %r8
	cmpq	$524288, %r8
	je	.L30
.L110:
	xorl	%edx, %edx
	popcntq	%r8, %rdx
.L31:
	cmpl	%edx, %r12d
	jg	.L5
	cmpl	%edx, %r13d
	jl	.L5
	testl	%r11d, %r11d
	je	.L33
	xorl	%esi, %esi
	testb	$1, %r8b
	je	.L7
	movl	(%rax), %esi
.L7:
	cmpl	$1, %r11d
	je	.L35
	testb	$2, %r8b
	je	.L9
	addl	4(%rax), %esi
.L9:
	cmpl	$2, %r11d
	je	.L36
	testb	$4, %r8b
	je	.L10
	addl	8(%rax), %esi
.L10:
	cmpl	$3, %r11d
	je	.L37
	testb	$8, %r8b
	je	.L11
	addl	12(%rax), %esi
.L11:
	cmpl	$4, %r11d
	je	.L38
	testb	$16, %r8b
	je	.L12
	addl	16(%rax), %esi
.L12:
	cmpl	$5, %r11d
	je	.L39
	testb	$32, %r8b
	je	.L13
	addl	20(%rax), %esi
.L13:
	cmpl	$6, %r11d
	je	.L40
	testb	$64, %r8b
	je	.L15
	addl	24(%rax), %esi
.L15:
	movl	$12, %ecx
	movl	$7, %edx
.L6:
	vmovd	%edx, %xmm0
	vmovq	%r8, %xmm4
	cmpl	$1, -384(%rbp)
	vpbroadcastd	%xmm0, %ymm0
	vpbroadcastq	%xmm4, %ymm3
	vpaddd	%ymm9, %ymm0, %ymm4
	vpaddd	%ymm8, %ymm0, %ymm0
	vpsllvd	%ymm0, %ymm7, %ymm0
	vextracti128	$0x1, %ymm0, %xmm2
	vpmovsxdq	%xmm0, %ymm1
	vpmovsxdq	%xmm2, %ymm2
	vpand	%ymm3, %ymm1, %ymm1
	vpand	%ymm3, %ymm2, %ymm2
	vpcmpeqq	%ymm5, %ymm1, %ymm1
	vpcmpeqq	%ymm5, %ymm2, %ymm2
	vpcmpeqq	%ymm5, %ymm1, %ymm1
	vpcmpeqq	%ymm5, %ymm2, %ymm2
	vperm2i128	$32, %ymm2, %ymm1, %ymm0
	vperm2i128	$49, %ymm2, %ymm1, %ymm1
	vpshufd	$216, %ymm1, %ymm1
	vpshufd	$216, %ymm0, %ymm0
	vpunpcklqdq	%ymm1, %ymm0, %ymm0
	vpmaskmovd	(%r14), %ymm0, %ymm1
	vpand	%ymm0, %ymm1, %ymm0
	je	.L16
	vpsllvd	%ymm4, %ymm7, %ymm4
	vpmovsxdq	%xmm4, %ymm2
	vextracti128	$0x1, %ymm4, %xmm4
	vpmovsxdq	%xmm4, %ymm4
	vpand	%ymm3, %ymm2, %ymm2
	vpand	%ymm3, %ymm4, %ymm3
	vpcmpeqq	%ymm5, %ymm2, %ymm2
	vpcmpeqq	%ymm5, %ymm3, %ymm3
	vpcmpeqq	%ymm5, %ymm2, %ymm2
	vpcmpeqq	%ymm5, %ymm3, %ymm3
	vperm2i128	$32, %ymm3, %ymm2, %ymm1
	vperm2i128	$49, %ymm3, %ymm2, %ymm2
	vpshufd	$216, %ymm2, %ymm2
	vpshufd	$216, %ymm1, %ymm4
	vpunpcklqdq	%ymm2, %ymm4, %ymm1
	vpmaskmovd	(%r15), %ymm1, %ymm2
	vpand	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
.L16:
	vperm2i128	$33, %ymm6, %ymm0, %ymm1
	addl	%ebx, %edx
	subl	%ebx, %ecx
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm6, %ymm0, %ymm1
	vpalignr	$8, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm6, %ymm0, %ymm1
	vpalignr	$4, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovd	%xmm0, %edi
	addl	%edi, %esi
	cmpl	-388(%rbp), %ebx
	je	.L17
	shlx	%edx, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L18
	movslq	%edx, %rdi
	addl	(%rax,%rdi,4), %esi
.L18:
	leal	1(%rdx), %r9d
	cmpl	$1, %ecx
	je	.L17
	shlx	%r9d, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L19
	movslq	%r9d, %r9
	addl	(%rax,%r9,4), %esi
.L19:
	leal	2(%rdx), %r9d
	cmpl	$2, %ecx
	je	.L17
	shlx	%r9d, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L20
	movslq	%r9d, %r9
	addl	(%rax,%r9,4), %esi
.L20:
	leal	3(%rdx), %r9d
	cmpl	$3, %ecx
	je	.L17
	shlx	%r9d, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L21
	movslq	%r9d, %r9
	addl	(%rax,%r9,4), %esi
.L21:
	leal	4(%rdx), %r9d
	cmpl	$4, %ecx
	je	.L17
	shlx	%r9d, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L22
	movslq	%r9d, %r9
	addl	(%rax,%r9,4), %esi
.L22:
	leal	5(%rdx), %r9d
	cmpl	$5, %ecx
	je	.L17
	shlx	%r9d, %r10d, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L23
	movslq	%r9d, %r9
	addl	(%rax,%r9,4), %esi
.L23:
	addl	$6, %edx
	cmpl	$6, %ecx
	je	.L17
	shlx	%edx, %r10d, %ecx
	movslq	%ecx, %rcx
	testq	%r8, %rcx
	je	.L17
	movslq	%edx, %rdx
	addl	(%rax,%rdx,4), %esi
.L17:
	cmpl	$63, %esi
	jne	.L5
	xorl	%ecx, %ecx
	tzcntq	%r8, %rcx
	leal	1(%rcx), %edx
	salq	$4, %rcx
	vmovdqa	-368(%rbp,%rcx), %xmm1
	cmpl	$19, %edx
	je	.L26
	movq	-400(%rbp), %rdi
	leaq	16(%rdi,%rcx), %rdi
	.p2align 4,,10
	.p2align 3
.L28:
	shlx	%edx, %r10d, %ecx
	movslq	%ecx, %rcx
	testq	%r8, %rcx
	je	.L27
	vpclmulqdq	$0, (%rdi), %xmm1, %xmm1
.L27:
	addl	$1, %edx
	addq	$16, %rdi
	cmpl	$19, %edx
	jne	.L28
.L26:
	vmovq	%xmm1, %rdx
	vpextrq	$1, %xmm1, %r9
	popcntq	%rdx, %rdx
	popcntq	%r9, %r9
	addl	%edx, %r9d
	cmpl	-392(%rbp), %r9d
	jl	.L5
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L29:
	movslq	%edi, %rcx
	vmovq	%rcx, %xmm0
	xorl	%ecx, %ecx
	vpsllq	%xmm0, %xmm1, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rdx
	popcntq	%rdx, %rcx
	vpextrq	$1, %xmm0, %rdx
	popcntq	%rdx, %rdx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	addl	$1, %edi
	cmpl	$64, %edi
	jne	.L29
	cmpl	%esi, %r9d
	cmovle	%r9d, %esi
	cmpl	-392(%rbp), %esi
	jle	.L5
	movq	%r8, -408(%rbp)
	addq	$1, %r8
	vmovdqa	%xmm1, %xmm10
	movl	%esi, -392(%rbp)
	cmpq	$524288, %r8
	jne	.L110
.L30:
	vmovq	%xmm10, %rcx
	vpextrq	$1, %xmm10, %rdx
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	vzeroupper
	call	__printf_chk@PLT
	movl	-392(%rbp), %edx
	movq	-408(%rbp), %rcx
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L111
	addq	$384, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
	movl	$18, %ecx
	movl	$1, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L33:
	movl	$19, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L36:
	movl	$17, %ecx
	movl	$2, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L37:
	movl	$16, %ecx
	movl	$3, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$15, %ecx
	movl	$4, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$14, %ecx
	movl	$5, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$13, %ecx
	movl	$6, %edx
	jmp	.L6
.L111:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4796:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
.LC2:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC3:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
