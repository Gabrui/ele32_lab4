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
	subq	$416, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovaps	%xmm6, -384(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %rbx
	movq	%rax, -440(%rbp)
	call	memcpy@PLT
	movl	$76, %edi
	call	malloc@PLT
	vmovdqa	-384(%rbp), %xmm6
	movl	$63, %esi
	leaq	304(%rbx), %rdi
	movq	%rax, %r12
	movq	%rbx, %rax
	movq	%r12, %rdx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%esi, %ebx
	xorl	%ecx, %ecx
	addq	$16, %rax
	lzcntq	-16(%rax), %rcx
	subl	%ecx, %ebx
	addq	$4, %rdx
	movl	%ebx, -4(%rdx)
	cmpq	%rdi, %rax
	jne	.L2
	movl	$1, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3:
	addl	-4(%r12,%rax,4), %edx
	movl	%eax, %r15d
	addq	$1, %rax
	cmpl	$62, %edx
	jle	.L3
	leaq	72(%r12), %rdx
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	.p2align 4,,10
	.p2align 3
.L4:
	addl	(%rdx), %eax
	addl	$1, %r14d
	subq	$4, %rdx
	cmpl	$62, %eax
	jle	.L4
	movq	%r12, %rbx
	movl	$19, %eax
	movl	$1, %edx
	movl	$1, %r8d
	shrq	$2, %rbx
	vpxor	%xmm5, %xmm5, %xmm5
	vpxor	%xmm7, %xmm7, %xmm7
	movq	$0, -448(%rbp)
	negq	%rbx
	vmovdqa	.LC1(%rip), %ymm10
	movl	$0, -428(%rbp)
	andl	$7, %ebx
	vmovdqa	.LC2(%rip), %ymm9
	vmovdqa	.LC3(%rip), %ymm8
	subl	%ebx, %eax
	movl	%eax, %esi
	movl	%eax, -404(%rbp)
	shrl	$3, %eax
	movl	%eax, -408(%rbp)
	movl	%ebx, %eax
	andl	$-8, %esi
	leaq	(%r12,%rax,4), %rax
	movl	%esi, %r13d
	movq	%rax, -416(%rbp)
	addq	$32, %rax
	movq	%rax, -424(%rbp)
	movl	$1, %eax
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L5:
	addq	$1, %r8
	cmpq	$524289, %r8
	je	.L33
.L111:
	xorl	%edx, %edx
	popcntq	%r8, %rdx
.L34:
	cmpl	%edx, %r14d
	jg	.L5
	cmpl	%edx, %r15d
	jl	.L5
	testl	%ebx, %ebx
	je	.L36
	xorl	%esi, %esi
	testb	$1, %r8b
	je	.L7
	movl	(%r12), %esi
.L7:
	cmpl	$1, %ebx
	je	.L38
	testb	$2, %r8b
	je	.L9
	addl	4(%r12), %esi
.L9:
	cmpl	$2, %ebx
	je	.L39
	testb	$4, %r8b
	je	.L10
	addl	8(%r12), %esi
.L10:
	cmpl	$3, %ebx
	je	.L40
	testb	$8, %r8b
	je	.L11
	addl	12(%r12), %esi
.L11:
	cmpl	$4, %ebx
	je	.L41
	testb	$16, %r8b
	je	.L12
	addl	16(%r12), %esi
.L12:
	cmpl	$5, %ebx
	je	.L42
	testb	$32, %r8b
	je	.L13
	addl	20(%r12), %esi
.L13:
	cmpl	$6, %ebx
	je	.L43
	testb	$64, %r8b
	je	.L15
	addl	24(%r12), %esi
.L15:
	movl	$12, %ecx
	movl	$7, %edx
.L6:
	vmovd	%edx, %xmm0
	vmovq	%r8, %xmm3
	movq	-416(%rbp), %rdi
	cmpl	$1, -408(%rbp)
	vpbroadcastd	%xmm0, %ymm0
	vpbroadcastq	%xmm3, %ymm3
	vpaddd	%ymm10, %ymm0, %ymm4
	vpaddd	%ymm9, %ymm0, %ymm0
	vpsllvd	%ymm0, %ymm8, %ymm0
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
	vpmaskmovd	(%rdi), %ymm0, %ymm1
	vpand	%ymm0, %ymm1, %ymm0
	je	.L16
	vpsllvd	%ymm4, %ymm8, %ymm4
	movq	-424(%rbp), %rdi
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
	vpmaskmovd	(%rdi), %ymm1, %ymm2
	vpand	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
.L16:
	vperm2i128	$33, %ymm7, %ymm0, %ymm1
	addl	%r13d, %edx
	subl	%r13d, %ecx
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm7, %ymm0, %ymm1
	vpalignr	$8, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm7, %ymm0, %ymm1
	vpalignr	$4, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovd	%xmm0, %edi
	addl	%edi, %esi
	cmpl	%r13d, -404(%rbp)
	je	.L17
	shlx	%edx, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L18
	movslq	%edx, %rdi
	addl	(%r12,%rdi,4), %esi
.L18:
	leal	1(%rdx), %r9d
	cmpl	$1, %ecx
	je	.L17
	shlx	%r9d, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L19
	movslq	%r9d, %r9
	addl	(%r12,%r9,4), %esi
.L19:
	leal	2(%rdx), %r9d
	cmpl	$2, %ecx
	je	.L17
	shlx	%r9d, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L20
	movslq	%r9d, %r9
	addl	(%r12,%r9,4), %esi
.L20:
	leal	3(%rdx), %r9d
	cmpl	$3, %ecx
	je	.L17
	shlx	%r9d, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L21
	movslq	%r9d, %r9
	addl	(%r12,%r9,4), %esi
.L21:
	leal	4(%rdx), %r9d
	cmpl	$4, %ecx
	je	.L17
	shlx	%r9d, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L22
	movslq	%r9d, %r9
	addl	(%r12,%r9,4), %esi
.L22:
	leal	5(%rdx), %r9d
	cmpl	$5, %ecx
	je	.L17
	shlx	%r9d, %eax, %edi
	movslq	%edi, %rdi
	testq	%r8, %rdi
	je	.L23
	movslq	%r9d, %r9
	addl	(%r12,%r9,4), %esi
.L23:
	addl	$6, %edx
	cmpl	$6, %ecx
	je	.L17
	shlx	%edx, %eax, %ecx
	movslq	%ecx, %rcx
	testq	%r8, %rcx
	je	.L17
	movslq	%edx, %rdx
	addl	(%r12,%rdx,4), %esi
.L17:
	cmpl	$63, %esi
	jne	.L5
	xorl	%ecx, %ecx
	tzcntq	%r8, %rcx
	leal	1(%rcx), %edx
	salq	$4, %rcx
	vmovdqa	-368(%rbp,%rcx), %xmm3
	vmovaps	%xmm3, -400(%rbp)
	cmpl	$18, %edx
	jg	.L26
	movq	-440(%rbp), %rdi
	leaq	16(%rdi,%rcx), %rdi
	.p2align 4,,10
	.p2align 3
.L28:
	shlx	%edx, %eax, %ecx
	movslq	%ecx, %rcx
	testq	%r8, %rcx
	je	.L27
	vmovdqa	-400(%rbp), %xmm3
	vpclmulqdq	$0, (%rdi), %xmm3, %xmm3
	vmovaps	%xmm3, -400(%rbp)
.L27:
	addl	$1, %edx
	addq	$16, %rdi
	cmpl	$19, %edx
	jne	.L28
.L26:
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %r11
	popcntq	%rdx, %rdx
	popcntq	%r11, %r11
	addl	%edx, %r11d
	cmpl	-428(%rbp), %r11d
	jl	.L5
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %r9
	movl	$63, %r10d
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%r9, -376(%rbp)
.L30:
	addq	%rdi, %rdi
	vmovdqa	-400(%rbp), %xmm4
	movq	%rdi, -384(%rbp)
	vpxor	-384(%rbp), %xmm4, %xmm0
	vmovq	%xmm0, %rdx
	vpextrq	$1, %xmm0, %rcx
	popcntq	%rdx, %rdx
	popcntq	%rcx, %rcx
	addl	%ecx, %edx
	cmpl	%edx, %esi
	cmovg	%edx, %esi
	subl	$1, %r10d
	je	.L110
.L31:
	addq	%r9, %r9
	testq	%rdi, %rdi
	jns	.L29
	orq	$1, %r9
	movq	%r9, -376(%rbp)
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$18, %ecx
	movl	$1, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L36:
	movl	$19, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L39:
	movl	$17, %ecx
	movl	$2, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$16, %ecx
	movl	$3, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$15, %ecx
	movl	$4, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L110:
	cmpl	%r11d, %esi
	cmovg	%r11d, %esi
	cmpl	-428(%rbp), %esi
	jle	.L5
	movq	%r8, -448(%rbp)
	addq	$1, %r8
	vmovdqa	%xmm4, %xmm6
	movl	%esi, -428(%rbp)
	cmpq	$524289, %r8
	jne	.L111
.L33:
	vmovq	%xmm6, %rcx
	vpextrq	$1, %xmm6, %rdx
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	vzeroupper
	call	__printf_chk@PLT
	movl	-428(%rbp), %edx
	movq	-448(%rbp), %rcx
	xorl	%eax, %eax
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L112
	addq	$416, %rsp
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
.L42:
	.cfi_restore_state
	movl	$14, %ecx
	movl	$5, %edx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L43:
	movl	$13, %ecx
	movl	$6, %edx
	jmp	.L6
.L112:
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
