	.file	"main.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%llu\n"
.LC7:
	.string	"%.16llx %.16llx\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"Dist\303\242ncia M\303\255nima %d, Posi\303\247\303\243o %llu"
	.section	.rodata
	.align 32
.LC0:
	.quad	3
	.quad	0
	.quad	7
	.quad	0
	.quad	19
	.quad	0
	.quad	25
	.quad	0
	.quad	31
	.quad	0
	.quad	283
	.quad	0
	.quad	285
	.quad	0
	.quad	299
	.quad	0
	.quad	301
	.quad	0
	.quad	313
	.quad	0
	.quad	319
	.quad	0
	.quad	333
	.quad	0
	.quad	351
	.quad	0
	.quad	355
	.quad	0
	.quad	357
	.quad	0
	.quad	361
	.quad	0
	.quad	369
	.quad	0
	.quad	375
	.quad	0
	.quad	379
	.quad	0
	.quad	391
	.quad	0
	.quad	395
	.quad	0
	.quad	397
	.quad	0
	.quad	415
	.quad	0
	.quad	419
	.quad	0
	.quad	425
	.quad	0
	.quad	433
	.quad	0
	.quad	445
	.quad	0
	.quad	451
	.quad	0
	.quad	463
	.quad	0
	.quad	471
	.quad	0
	.quad	477
	.quad	0
	.quad	487
	.quad	0
	.quad	499
	.quad	0
	.quad	501
	.quad	0
	.quad	505
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
	movl	$560, %edx
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
	subq	$672, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -696(%rbp)
	call	memcpy@PLT
	movl	$140, %edi
	call	malloc@PLT
	leaq	560(%r15), %rdi
	movl	$63, %esi
	movq	%rax, %rbx
	movq	%r15, %rax
	movq	%rbx, %rdx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%esi, %r10d
	xorl	%ecx, %ecx
	addq	$16, %rax
	lzcntq	-16(%rax), %rcx
	subl	%ecx, %r10d
	addq	$4, %rdx
	movl	%r10d, -4(%rdx)
	cmpq	%rax, %rdi
	jne	.L2
	movl	$1, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3:
	addl	-4(%rbx,%rax,4), %edx
	movl	%eax, %ecx
	addq	$1, %rax
	cmpl	$126, %edx
	jle	.L3
	movl	%ecx, -660(%rbp)
	leaq	136(%rbx), %rdx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L4:
	addl	(%rdx), %eax
	addl	$1, %ecx
	subq	$4, %rdx
	cmpl	$126, %eax
	jle	.L4
	movq	%rbx, %r13
	movl	$1, %edi
	xorl	%eax, %eax
	movl	%ecx, -640(%rbp)
	shrq	$2, %r13
	leaq	.LC1(%rip), %rsi
	movabsq	$34359738368, %rdx
	movl	$1, %r12d
	call	__printf_chk@PLT
	negq	%r13
	movl	$35, %eax
	movl	$1, %r11d
	andl	$7, %r13d
	vpxor	%xmm7, %xmm7, %xmm7
	movq	$0, -704(%rbp)
	vmovdqa	.LC2(%rip), %ymm13
	subl	%r13d, %eax
	vmovdqa	.LC3(%rip), %ymm8
	movl	$0, -672(%rbp)
	vpxor	%xmm9, %xmm9, %xmm9
	movl	%eax, %esi
	movl	%eax, -664(%rbp)
	shrl	$3, %eax
	vmovdqa	.LC4(%rip), %ymm12
	movl	%eax, -668(%rbp)
	movl	%r13d, %eax
	andl	$-8, %esi
	vmovdqa	.LC5(%rip), %ymm11
	leaq	(%rbx,%rax,4), %r14
	movl	%esi, %r15d
	vmovdqa	.LC6(%rip), %ymm10
	movl	-640(%rbp), %r10d
	leaq	32(%r14), %rax
	movq	%rax, -680(%rbp)
	movl	$1, %eax
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L5:
	movabsq	$34359738369, %rax
	addq	$1, %r11
	cmpq	%rax, %r11
	je	.L35
	xorl	%eax, %eax
	popcntq	%r11, %rax
.L36:
	cmpl	%eax, %r10d
	jg	.L5
	cmpl	%eax, -660(%rbp)
	jl	.L5
	testl	%r13d, %r13d
	je	.L38
	xorl	%ecx, %ecx
	testb	$1, %r11b
	je	.L7
	movl	(%rbx), %ecx
.L7:
	cmpl	$1, %r13d
	je	.L40
	testb	$2, %r11b
	je	.L9
	addl	4(%rbx), %ecx
.L9:
	cmpl	$2, %r13d
	je	.L41
	testb	$4, %r11b
	je	.L10
	addl	8(%rbx), %ecx
.L10:
	cmpl	$3, %r13d
	je	.L42
	testb	$8, %r11b
	je	.L11
	addl	12(%rbx), %ecx
.L11:
	cmpl	$4, %r13d
	je	.L43
	testb	$16, %r11b
	je	.L12
	addl	16(%rbx), %ecx
.L12:
	cmpl	$5, %r13d
	je	.L44
	testb	$32, %r11b
	je	.L13
	addl	20(%rbx), %ecx
.L13:
	cmpl	$6, %r13d
	je	.L45
	testb	$64, %r11b
	je	.L15
	addl	24(%rbx), %ecx
.L15:
	movl	$28, %edx
	movl	$7, %eax
.L6:
	vmovd	%eax, %xmm0
	vmovq	%r11, %xmm5
	movq	-680(%rbp), %rsi
	cmpl	$3, -668(%rbp)
	vpbroadcastd	%xmm0, %ymm0
	vpbroadcastq	%xmm5, %ymm5
	vpaddd	%ymm13, %ymm0, %ymm1
	vpsllvd	%ymm1, %ymm8, %ymm1
	vextracti128	$0x1, %ymm1, %xmm3
	vpmovsxdq	%xmm1, %ymm2
	vpmovsxdq	%xmm3, %ymm3
	vpand	%ymm5, %ymm2, %ymm2
	vpand	%ymm5, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vperm2i128	$32, %ymm3, %ymm2, %ymm1
	vperm2i128	$49, %ymm3, %ymm2, %ymm2
	vpshufd	$216, %ymm2, %ymm2
	vpshufd	$216, %ymm1, %ymm1
	vpunpcklqdq	%ymm2, %ymm1, %ymm1
	vpaddd	%ymm12, %ymm0, %ymm2
	vpmaskmovd	(%r14), %ymm1, %ymm4
	vpsllvd	%ymm2, %ymm8, %ymm2
	vpand	%ymm1, %ymm4, %ymm1
	vextracti128	$0x1, %ymm2, %xmm4
	vpmovsxdq	%xmm2, %ymm3
	vpmovsxdq	%xmm4, %ymm4
	vpand	%ymm5, %ymm3, %ymm3
	vpand	%ymm5, %ymm4, %ymm4
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm4, %ymm4
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm4, %ymm4
	vperm2i128	$32, %ymm4, %ymm3, %ymm2
	vperm2i128	$49, %ymm4, %ymm3, %ymm3
	vpshufd	$216, %ymm2, %ymm6
	vpshufd	$216, %ymm3, %ymm3
	vpunpcklqdq	%ymm3, %ymm6, %ymm2
	vpaddd	%ymm11, %ymm0, %ymm6
	vpmaskmovd	(%rsi), %ymm2, %ymm4
	vpaddd	%ymm10, %ymm0, %ymm0
	vpand	%ymm2, %ymm4, %ymm4
	vpaddd	%ymm1, %ymm4, %ymm4
	vpsllvd	%ymm0, %ymm8, %ymm1
	vextracti128	$0x1, %ymm1, %xmm3
	vpmovsxdq	%xmm1, %ymm2
	vpmovsxdq	%xmm3, %ymm3
	vpand	%ymm5, %ymm2, %ymm2
	vpand	%ymm5, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vperm2i128	$32, %ymm3, %ymm2, %ymm1
	vperm2i128	$49, %ymm3, %ymm2, %ymm2
	vpshufd	$216, %ymm1, %ymm0
	vpshufd	$216, %ymm2, %ymm2
	vpunpcklqdq	%ymm2, %ymm0, %ymm1
	vpmaskmovd	64(%r14), %ymm1, %ymm0
	vpand	%ymm1, %ymm0, %ymm0
	vpaddd	%ymm4, %ymm0, %ymm0
	je	.L16
	vpsllvd	%ymm6, %ymm8, %ymm6
	vextracti128	$0x1, %ymm6, %xmm3
	vpmovsxdq	%xmm6, %ymm2
	vpmovsxdq	%xmm3, %ymm3
	vpand	%ymm5, %ymm2, %ymm2
	vpand	%ymm5, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vpcmpeqq	%ymm7, %ymm2, %ymm2
	vpcmpeqq	%ymm7, %ymm3, %ymm3
	vperm2i128	$32, %ymm3, %ymm2, %ymm1
	vperm2i128	$49, %ymm3, %ymm2, %ymm2
	vpshufd	$216, %ymm2, %ymm2
	vpshufd	$216, %ymm1, %ymm4
	vpunpcklqdq	%ymm2, %ymm4, %ymm1
	vpmaskmovd	96(%r14), %ymm1, %ymm2
	vpand	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
.L16:
	vperm2i128	$33, %ymm9, %ymm0, %ymm1
	addl	%r15d, %eax
	subl	%r15d, %edx
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm9, %ymm0, %ymm1
	vpalignr	$8, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vperm2i128	$33, %ymm9, %ymm0, %ymm1
	vpalignr	$4, %ymm0, %ymm1, %ymm1
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovd	%xmm0, %esi
	addl	%ecx, %esi
	cmpl	%r15d, -664(%rbp)
	je	.L17
	shlx	%eax, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L18
	movslq	%eax, %rcx
	addl	(%rbx,%rcx,4), %esi
.L18:
	leal	1(%rax), %edi
	cmpl	$1, %edx
	je	.L17
	shlx	%edi, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L19
	movslq	%edi, %rdi
	addl	(%rbx,%rdi,4), %esi
.L19:
	leal	2(%rax), %edi
	cmpl	$2, %edx
	je	.L17
	shlx	%edi, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L20
	movslq	%edi, %rdi
	addl	(%rbx,%rdi,4), %esi
.L20:
	leal	3(%rax), %edi
	cmpl	$3, %edx
	je	.L17
	shlx	%edi, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L21
	movslq	%edi, %rdi
	addl	(%rbx,%rdi,4), %esi
.L21:
	leal	4(%rax), %edi
	cmpl	$4, %edx
	je	.L17
	shlx	%edi, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L22
	movslq	%edi, %rdi
	addl	(%rbx,%rdi,4), %esi
.L22:
	leal	5(%rax), %edi
	cmpl	$5, %edx
	je	.L17
	shlx	%edi, %r12d, %ecx
	movslq	%ecx, %rcx
	testq	%r11, %rcx
	je	.L23
	movslq	%edi, %rdi
	addl	(%rbx,%rdi,4), %esi
.L23:
	addl	$6, %eax
	cmpl	$6, %edx
	je	.L17
	shlx	%eax, %r12d, %edx
	movslq	%edx, %rdx
	testq	%r11, %rdx
	je	.L17
	cltq
	addl	(%rbx,%rax,4), %esi
.L17:
	cmpl	$127, %esi
	jne	.L5
	xorl	%eax, %eax
	tzcntq	%r11, %rax
	movslq	%eax, %rdi
	leal	1(%rax), %ecx
	movq	%rdi, %rdx
	movl	(%rbx,%rdi,4), %r8d
	salq	$4, %rdx
	vmovdqa	-624(%rbp,%rdx), %xmm5
	vmovaps	%xmm5, -656(%rbp)
	cmpl	$34, %ecx
	jg	.L26
	movq	-696(%rbp), %rdi
	movslq	%ecx, %rcx
	movl	$33, %r9d
	subl	%eax, %r9d
	leaq	16(%rdi,%rdx), %rdi
	leaq	1(%rcx), %rdx
	addq	%rdx, %r9
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L113:
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm5
	vmovaps	%xmm5, -656(%rbp)
.L27:
	movq	%rdx, %rcx
	addq	$16, %rdi
	cmpq	%r9, %rdx
	je	.L26
.L114:
	addq	$1, %rdx
.L29:
	shlx	%ecx, %r12d, %eax
	cltq
	testq	%r11, %rax
	je	.L27
	addl	(%rbx,%rcx,4), %r8d
	vmovdqa	(%rdi), %xmm0
	vmovdqa	-656(%rbp), %xmm5
	cmpl	$63, %r8d
	jle	.L113
	vpclmulqdq	$1, %xmm0, %xmm5, %xmm1
	vpclmulqdq	$0, %xmm0, %xmm5, %xmm0
	movq	%rdx, %rcx
	addq	$16, %rdi
	vpslldq	$8, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm5
	vmovaps	%xmm5, -656(%rbp)
	cmpq	%r9, %rdx
	jne	.L114
.L26:
	movq	-656(%rbp), %rax
	movq	-648(%rbp), %rdx
	popcntq	%rax, %rax
	popcntq	%rdx, %rdx
	addl	%edx, %eax
	movl	%eax, -684(%rbp)
	cmpl	-672(%rbp), %eax
	jle	.L5
	movq	-656(%rbp), %rdi
	movq	-648(%rbp), %rcx
	movl	$127, %r9d
	xorl	%r8d, %r8d
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%rcx, -632(%rbp)
.L32:
	addq	%rdi, %rdi
	vmovdqa	-656(%rbp), %xmm6
	movq	%rdi, -640(%rbp)
	vpxor	-640(%rbp), %xmm6, %xmm0
	vmovq	%xmm0, %rax
	vpextrq	$1, %xmm0, %rdx
	popcntq	%rax, %rax
	popcntq	%rdx, %rdx
	addl	%edx, %eax
	addl	%r8d, %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	subl	$1, %r9d
	je	.L115
.L33:
	movq	%rcx, %rax
	addq	%rcx, %rcx
	shrq	$63, %rax
	addl	%eax, %r8d
	testq	%rdi, %rdi
	jns	.L31
	orq	$1, %rcx
	movq	%rcx, -632(%rbp)
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$34, %edx
	movl	$1, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$35, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L41:
	movl	$33, %edx
	movl	$2, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L42:
	movl	$32, %edx
	movl	$3, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L43:
	movl	$31, %edx
	movl	$4, %eax
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L115:
	movl	-684(%rbp), %eax
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	cmpl	-672(%rbp), %esi
	jle	.L5
	vmovaps	%xmm6, -720(%rbp)
	movq	%r11, -704(%rbp)
	movl	%esi, -672(%rbp)
	jmp	.L5
.L44:
	movl	$30, %edx
	movl	$5, %eax
	jmp	.L6
.L45:
	movl	$29, %edx
	movl	$6, %eax
	jmp	.L6
.L35:
	vmovdqa	-720(%rbp), %xmm5
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	vmovq	%xmm5, %rcx
	vpextrq	$1, %xmm5, %rdx
	vzeroupper
	call	__printf_chk@PLT
	movl	-672(%rbp), %edx
	movq	-704(%rbp), %rcx
	xorl	%eax, %eax
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L116
	addq	$672, %rsp
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
.L116:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4796:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
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
	.align 32
.LC4:
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.align 32
.LC5:
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 32
.LC6:
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
