	.file	"main.cpp"
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
	.type	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev, @function
_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev:
.LFB11547:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11547
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, (%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L2
	movq	(%rdi), %rax
	call	*32(%rax)
.L2:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSt12domain_errorD2Ev@PLT
	.cfi_endproc
.LFE11547:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev,"aG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
.LLSDA11547:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11547-.LLSDACSB11547
.LLSDACSB11547:
.LLSDACSE11547:
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.size	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev, .-_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
	.weak	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	.set	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26,"axG",@progbits,_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,comdat
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26:
.LFB11724:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%r13, (%rdi)
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.L9
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, %rbp
	movq	%rax, (%rsp)
	cmpq	$15, %rax
	ja	.L22
	cmpq	$1, %rax
	jne	.L13
	movzbl	(%r12), %eax
	movb	%al, 16(%rbx)
.L14:
	movq	(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L23
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	movq	%rsp, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %r13
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	movq	%rax, 16(%rbx)
.L12:
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	memcpy@PLT
	jmp	.L14
.L13:
	testq	%rax, %rax
	je	.L14
	jmp	.L12
.L23:
	call	__stack_chk_fail@PLT
.L9:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE11724:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.p2align 4,,15
	.weak	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.type	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, @function
_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev:
.LFB11754:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11754
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	-40(%rax), %rbx
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	addq	%rdi, %rbx
	movq	%rax, 56(%rbx)
	movq	24(%rbx), %rdi
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, (%rbx)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	je	.L25
	movq	(%rdi), %rax
	call	*32(%rax)
.L25:
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE11754:
	.section	.gcc_except_table._ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
.LLSDA11754:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11754-.LLSDACSB11754
.LLSDACSB11754:
.LLSDACSE11754:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.size	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, .-_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.p2align 4,,15
	.weak	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.type	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, @function
_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev:
.LFB11752:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11752
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	-16(%rdi), %rbx
	movq	%rax, 40(%rdi)
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, -16(%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L31
	movq	(%rdi), %rax
	call	*32(%rax)
.L31:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSt12domain_errorD2Ev@PLT
	.cfi_endproc
.LFE11752:
	.section	.gcc_except_table._ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
.LLSDA11752:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11752-.LLSDACSB11752
.LLSDACSB11752:
.LLSDACSE11752:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.size	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, .-_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.p2align 4,,15
	.weak	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.type	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev, @function
_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev:
.LFB11750:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11750
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	-16(%rdi), %rbx
	movq	%rax, -16(%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L37
	movq	(%rdi), %rax
	call	*32(%rax)
.L37:
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE11750:
	.section	.gcc_except_table._ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"aG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
.LLSDA11750:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11750-.LLSDACSB11750
.LLSDACSB11750:
.LLSDACSE11750:
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.size	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev, .-_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.p2align 4,,15
	.weak	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.type	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, @function
_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev:
.LFB11751:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11751
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	(%rdi), %rax
	movq	-40(%rax), %rbx
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	addq	%rdi, %rbx
	movq	%rax, 56(%rbx)
	movq	24(%rbx), %rdi
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, (%rbx)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	testq	%rdi, %rdi
	je	.L43
	movq	(%rdi), %rax
	call	*32(%rax)
.L43:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSt12domain_errorD2Ev@PLT
	.cfi_endproc
.LFE11751:
	.section	.gcc_except_table._ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
.LLSDA11751:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11751-.LLSDACSB11751
.LLSDACSB11751:
.LLSDACSE11751:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.size	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, .-_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.p2align 4,,15
	.weak	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.type	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, @function
_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev:
.LFB11753:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11753
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	-16(%rdi), %rbx
	movq	%rax, 40(%rdi)
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, -16(%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L49
	movq	(%rdi), %rax
	call	*32(%rax)
.L49:
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE11753:
	.section	.gcc_except_table._ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
.LLSDA11753:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11753-.LLSDACSB11753
.LLSDACSB11753:
.LLSDACSE11753:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.size	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, .-_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.type	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, @function
_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev:
.LFB11553:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11553
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, 56(%rdi)
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, (%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L55
	movq	(%rdi), %rax
	call	*32(%rax)
.L55:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSt12domain_errorD2Ev@PLT
	.cfi_endproc
.LFE11553:
	.section	.gcc_except_table._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
.LLSDA11553:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11553-.LLSDACSB11553
.LLSDACSB11553:
.LLSDACSE11553:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev,comdat
	.size	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev, .-_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.type	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev, @function
_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev:
.LFB11549:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11549
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, (%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L61
	movq	(%rdi), %rax
	call	*32(%rax)
.L61:
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbx, %rdi
	movl	$56, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE11549:
	.section	.gcc_except_table._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"aG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
.LLSDA11549:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11549-.LLSDACSB11549
.LLSDACSB11549:
.LLSDACSE11549:
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.size	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev, .-_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.p2align 4,,15
	.weak	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	.type	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev, @function
_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev:
.LFB11757:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11757
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, -16(%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L67
	movq	(%rdi), %rax
	call	*32(%rax)
.L67:
	leaq	-16(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZNSt12domain_errorD2Ev@PLT
	.cfi_endproc
.LFE11757:
	.section	.gcc_except_table._ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev,"aG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
.LLSDA11757:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11757-.LLSDACSB11757
.LLSDACSB11757:
.LLSDACSE11757:
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED5Ev,comdat
	.size	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev, .-_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.type	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, @function
_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev:
.LFB11554:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11554
	leaq	136+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, 56(%rdi)
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, (%rdi)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L73
	movq	(%rdi), %rax
	call	*32(%rax)
.L73:
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbx, %rdi
	movl	$64, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE11554:
	.section	.gcc_except_table._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"aG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
.LLSDA11554:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11554-.LLSDACSB11554
.LLSDACSB11554:
.LLSDACSE11554:
	.section	.text._ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,"axG",@progbits,_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev,comdat
	.size	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev, .-_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,comdat
	.p2align 4,,15
	.weak	_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.type	_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv, @function
_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv:
.LFB11755:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11755
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rbp, %rsi
	movq	%rax, %rbx
	leaq	16+_ZTVN5boost16exception_detail10clone_baseE(%rip), %rax
	movq	%rbx, %rdi
	movq	%rax, 56(%rbx)
	call	_ZNSt11logic_errorC2ERKS_@PLT
	leaq	16+_ZTVSt12domain_error(%rip), %rax
	movq	24(%rbp), %rdi
	movq	%rax, (%rbx)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rdi, 24(%rbx)
	testq	%rdi, %rdi
	je	.L79
	movq	(%rdi), %rax
.LEHB1:
	call	*24(%rax)
.LEHE1:
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movq	24(%rbp), %rsi
	movl	%eax, 48(%rbx)
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$56, %rax
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	vmovups	%xmm0, 32(%rbx)
	movq	%rax, 56(%rbx)
	testq	%rsi, %rsi
	je	.L125
	movq	(%rsi), %rax
	movq	%rsp, %rdi
.LEHB2:
	call	*40(%rax)
.LEHE2:
	movq	(%rsp), %r12
	testq	%r12, %r12
	je	.L85
	movq	(%r12), %rax
	movq	%r12, %rdi
.LEHB3:
	call	*24(%rax)
.LEHE3:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L85
	movq	(%rdi), %rax
	call	*32(%rax)
.L85:
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movq	24(%rbx), %rdi
	movl	%eax, 48(%rbx)
	vmovups	%xmm0, 32(%rbx)
	testq	%rdi, %rdi
	je	.L87
	movq	(%rdi), %rax
.LEHB4:
	call	*32(%rax)
.LEHE4:
.L87:
	movq	%r12, 24(%rbx)
	testq	%r12, %r12
	je	.L122
	movq	(%r12), %rax
	movq	%r12, %rdi
.LEHB5:
	call	*24(%rax)
.LEHE5:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*32(%rax)
.L122:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
.L92:
	addq	%rbx, %rax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L126
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movl	%eax, 48(%rbx)
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$56, %rax
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	movq	%rax, 56(%rbx)
	vmovups	%xmm0, 32(%rbx)
.L81:
	testq	%rdi, %rdi
	je	.L99
	movq	(%rdi), %rax
.LEHB6:
	call	*32(%rax)
.LEHE6:
	xorl	%r12d, %r12d
	jmp	.L87
	.p2align 4,,10
	.p2align 3
.L99:
	movl	$56, %eax
	jmp	.L92
.L126:
	call	__stack_chk_fail@PLT
.L106:
.L123:
	movq	%rax, %rbp
.L124:
	vzeroupper
.L90:
	movq	%rbx, %rdi
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
.L83:
	movq	%rbx, %rdi
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L125:
	movq	24(%rbx), %rdi
	jmp	.L81
.L103:
	movq	(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	.L119
	movq	(%rdi), %rax
	vzeroupper
	call	*32(%rax)
.L89:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*32(%rax)
	jmp	.L90
.L101:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt12domain_errorD2Ev@PLT
	jmp	.L83
.L102:
	movq	%rax, %rbp
	vzeroupper
	jmp	.L89
.L104:
	jmp	.L123
.L105:
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L124
.L119:
	vzeroupper
	jmp	.L89
	.cfi_endproc
.LFE11755:
	.section	.gcc_except_table._ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,"aG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,comdat
.LLSDA11755:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11755-.LLSDACSB11755
.LLSDACSB11755:
	.uleb128 .LEHB0-.LFB11755
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB11755
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L101-.LFB11755
	.uleb128 0
	.uleb128 .LEHB2-.LFB11755
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L104-.LFB11755
	.uleb128 0
	.uleb128 .LEHB3-.LFB11755
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L103-.LFB11755
	.uleb128 0
	.uleb128 .LEHB4-.LFB11755
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L105-.LFB11755
	.uleb128 0
	.uleb128 .LEHB5-.LFB11755
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L102-.LFB11755
	.uleb128 0
	.uleb128 .LEHB6-.LFB11755
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L106-.LFB11755
	.uleb128 0
	.uleb128 .LEHB7-.LFB11755
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE11755:
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,comdat
	.size	_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv, .-_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.align 2
	.p2align 4,,15
	.weak	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.type	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv, @function
_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv:
.LFB11689:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11689
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	movl	$64, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rbp, %rsi
	movq	%rax, %rbx
	leaq	16+_ZTVN5boost16exception_detail10clone_baseE(%rip), %rax
	movq	%rbx, %rdi
	movq	%rax, 56(%rbx)
	call	_ZNSt11logic_errorC2ERKS_@PLT
	leaq	16+_ZTVSt12domain_error(%rip), %rax
	movq	24(%rbp), %rdi
	movq	%rax, (%rbx)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rdi, 24(%rbx)
	testq	%rdi, %rdi
	je	.L128
	movq	(%rdi), %rax
.LEHB9:
	call	*24(%rax)
.LEHE9:
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movq	24(%rbp), %rsi
	movl	%eax, 48(%rbx)
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$56, %rax
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	vmovups	%xmm0, 32(%rbx)
	movq	%rax, 56(%rbx)
	testq	%rsi, %rsi
	je	.L174
	movq	(%rsi), %rax
	movq	%rsp, %rdi
.LEHB10:
	call	*40(%rax)
.LEHE10:
	movq	(%rsp), %r12
	testq	%r12, %r12
	je	.L134
	movq	(%r12), %rax
	movq	%r12, %rdi
.LEHB11:
	call	*24(%rax)
.LEHE11:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L134
	movq	(%rdi), %rax
	call	*32(%rax)
.L134:
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movq	24(%rbx), %rdi
	movl	%eax, 48(%rbx)
	vmovups	%xmm0, 32(%rbx)
	testq	%rdi, %rdi
	je	.L136
	movq	(%rdi), %rax
.LEHB12:
	call	*32(%rax)
.LEHE12:
.L136:
	movq	%r12, 24(%rbx)
	testq	%r12, %r12
	je	.L171
	movq	(%r12), %rax
	movq	%r12, %rdi
.LEHB13:
	call	*24(%rax)
.LEHE13:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*32(%rax)
.L171:
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
.L141:
	addq	%rbx, %rax
	movq	8(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L175
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L128:
	.cfi_restore_state
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movl	%eax, 48(%rbx)
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$56, %rax
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	movq	%rax, 56(%rbx)
	vmovups	%xmm0, 32(%rbx)
.L130:
	testq	%rdi, %rdi
	je	.L148
	movq	(%rdi), %rax
.LEHB14:
	call	*32(%rax)
.LEHE14:
	xorl	%r12d, %r12d
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L148:
	movl	$56, %eax
	jmp	.L141
.L175:
	call	__stack_chk_fail@PLT
.L155:
.L172:
	movq	%rax, %rbp
.L173:
	vzeroupper
.L139:
	movq	%rbx, %rdi
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
.L132:
	movq	%rbx, %rdi
	movl	$64, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L174:
	movq	24(%rbx), %rdi
	jmp	.L130
.L152:
	movq	(%rsp), %rdi
	movq	%rax, %rbp
	testq	%rdi, %rdi
	je	.L168
	movq	(%rdi), %rax
	vzeroupper
	call	*32(%rax)
.L138:
	movq	(%r12), %rax
	movq	%r12, %rdi
	call	*32(%rax)
	jmp	.L139
.L150:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt12domain_errorD2Ev@PLT
	jmp	.L132
.L151:
	movq	%rax, %rbp
	vzeroupper
	jmp	.L138
.L153:
	jmp	.L172
.L154:
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.L173
.L168:
	vzeroupper
	jmp	.L138
	.cfi_endproc
.LFE11689:
	.section	.gcc_except_table._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,"aG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,comdat
.LLSDA11689:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11689-.LLSDACSB11689
.LLSDACSB11689:
	.uleb128 .LEHB8-.LFB11689
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB11689
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L150-.LFB11689
	.uleb128 0
	.uleb128 .LEHB10-.LFB11689
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L153-.LFB11689
	.uleb128 0
	.uleb128 .LEHB11-.LFB11689
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L152-.LFB11689
	.uleb128 0
	.uleb128 .LEHB12-.LFB11689
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L154-.LFB11689
	.uleb128 0
	.uleb128 .LEHB13-.LFB11689
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L151-.LFB11689
	.uleb128 0
	.uleb128 .LEHB14-.LFB11689
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L155-.LFB11689
	.uleb128 0
	.uleb128 .LEHB15-.LFB11689
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE11689:
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv,comdat
	.size	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv, .-_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.section	.rodata._ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_.str1.1,"aMS",@progbits,1
.LC1:
	.string	"basic_string::replace"
	.section	.rodata._ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.section	.text._ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_,"axG",@progbits,_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_,comdat
	.p2align 4,,15
	.weak	_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_
	.type	_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_, @function
_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_:
.LFB8315:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	strlen@PLT
	movq	%r14, %rdi
	movq	%rax, %r13
	call	strlen@PLT
	movq	%r13, %rcx
	movq	%rax, %r15
	jmp	.L179
	.p2align 4,,10
	.p2align 3
.L183:
	movq	%r14, %rdi
	call	strlen@PLT
	movq	8(%rbp), %rcx
	movq	%rax, %r8
	movq	%rcx, %rdx
	subq	%rbx, %rdx
	cmpq	%r13, %rdx
	cmova	%r13, %rdx
	cmpq	%rcx, %rbx
	ja	.L182
	movq	%r14, %rcx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@PLT
	movq	%r12, %rdi
	addq	%r15, %rbx
	call	strlen@PLT
	movq	%rax, %rcx
.L179:
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm@PLT
	movq	%rax, %rbx
	cmpq	$-1, %rax
	jne	.L183
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L182:
	.cfi_restore_state
	movq	%rbx, %rdx
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
	.cfi_endproc
.LFE8315:
	.size	_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_, .-_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC5ERKS3_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_
	.type	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_, @function
_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_:
.LFB11491:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11491
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSt11logic_errorC2ERKS_@PLT
	leaq	16+_ZTVSt12domain_error(%rip), %rax
	movq	%rax, (%rbx)
	movq	24(%rbp), %rdi
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rdi, 24(%rbx)
	testq	%rdi, %rdi
	je	.L186
	movq	(%rdi), %rax
.LEHB16:
	call	*24(%rax)
.LEHE16:
.L186:
	movl	48(%rbp), %eax
	vmovdqu	32(%rbp), %xmm0
	movl	%eax, 48(%rbx)
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$40, %rax
	vmovups	%xmm0, 32(%rbx)
	movq	%rax, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L188:
	.cfi_restore_state
	movq	%rax, %rbp
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt12domain_errorD2Ev@PLT
	movq	%rbp, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
	.cfi_endproc
.LFE11491:
	.section	.gcc_except_table._ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_,"aG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC5ERKS3_,comdat
.LLSDA11491:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11491-.LLSDACSB11491
.LLSDACSB11491:
	.uleb128 .LEHB16-.LFB11491
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L188-.LFB11491
	.uleb128 0
	.uleb128 .LEHB17-.LFB11491
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE11491:
	.section	.text._ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_,"axG",@progbits,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC5ERKS3_,comdat
	.size	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_, .-_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_
	.weak	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC1ERKS3_
	.set	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC1ERKS3_,_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.type	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv, @function
_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv:
.LFB11690:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11690
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movl	$64, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	__cxa_allocate_exception@PLT
	movq	%rbp, %rsi
	movq	%rax, %rbx
	leaq	16+_ZTVN5boost16exception_detail10clone_baseE(%rip), %rax
	movq	%rbx, %rdi
	movq	%rax, 56(%rbx)
.LEHB18:
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_
.LEHE18:
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	leaq	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev(%rip), %rdx
	movq	%rbx, %rdi
	movq	%rax, (%rbx)
	addq	$56, %rax
	leaq	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rsi
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	movq	%rax, 56(%rbx)
.LEHB19:
	call	__cxa_throw@PLT
.L194:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	vzeroupper
	call	__cxa_free_exception@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE19:
	.cfi_endproc
.LFE11690:
	.section	.gcc_except_table._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,"aG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,comdat
.LLSDA11690:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11690-.LLSDACSB11690
.LLSDACSB11690:
	.uleb128 .LEHB18-.LFB11690
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L194-.LFB11690
	.uleb128 0
	.uleb128 .LEHB19-.LFB11690
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE11690:
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,comdat
	.size	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv, .-_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.p2align 4,,15
	.weak	_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.type	_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv, @function
_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv:
.LFB11756:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11756
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	addq	-32(%rax), %rdi
	movq	%rdi, %rbp
	movl	$64, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rbp, %rsi
	movq	%rax, %rbx
	leaq	16+_ZTVN5boost16exception_detail10clone_baseE(%rip), %rax
	movq	%rbx, %rdi
	movq	%rax, 56(%rbx)
.LEHB20:
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorEC2ERKS3_
.LEHE20:
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	leaq	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev(%rip), %rdx
	movq	%rbx, %rdi
	movq	%rax, (%rbx)
	addq	$56, %rax
	leaq	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rsi
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	movq	%rax, 56(%rbx)
.LEHB21:
	call	__cxa_throw@PLT
.L198:
	movq	%rax, %rbp
	movq	%rbx, %rdi
	vzeroupper
	call	__cxa_free_exception@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE21:
	.cfi_endproc
.LFE11756:
	.section	.gcc_except_table._ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,"aG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,comdat
.LLSDA11756:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11756-.LLSDACSB11756
.LLSDACSB11756:
	.uleb128 .LEHB20-.LFB11756
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L198-.LFB11756
	.uleb128 0
	.uleb128 .LEHB21-.LFB11756
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE11756:
	.section	.text._ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,"axG",@progbits,_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv,comdat
	.size	_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv, .-_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.section	.text._ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,"axG",@progbits,_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,comdat
	.p2align 4,,15
	.weak	_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_
	.type	_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_, @function
_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_:
.LFB11479:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11479
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	movl	$64, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r12
	call	__cxa_allocate_exception@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%rax, %rbx
	call	_ZNSt11logic_errorC2ERKS_@PLT
	leaq	16+_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE(%rip), %rax
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	%rax, 16(%rsp)
	addq	$40, %rax
	movq	%rax, 32(%rsp)
	leaq	16+_ZTVN5boost16exception_detail10clone_baseE(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 56(%rsp)
	movl	$-1, 64(%rsp)
	call	_ZNSt11logic_errorC2ERKS_@PLT
	leaq	16+_ZTVSt12domain_error(%rip), %rax
	movq	40(%rsp), %rsi
	movq	%rax, (%rbx)
	leaq	16+_ZTVN5boost9exceptionE(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	%rsi, 24(%rbx)
	testq	%rsi, %rsi
	je	.L204
	movq	(%rsi), %rax
	movq	%rsi, %rdi
.LEHB22:
	call	*24(%rax)
.LEHE22:
	movq	40(%rsp), %rsi
.L204:
	movl	64(%rsp), %eax
	vmovdqa	48(%rsp), %xmm0
	movq	%rsi, %rbp
	movl	%eax, 48(%rbx)
	leaq	24+_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rax
	movq	%rax, (%rbx)
	addq	$56, %rax
	movq	%rax, 16(%rbx)
	addq	$56, %rax
	vmovups	%xmm0, 32(%rbx)
	movq	%rax, 56(%rbx)
	testq	%rsi, %rsi
	je	.L243
	movq	(%rsi), %rax
	leaq	8(%rsp), %rdi
.LEHB23:
	call	*40(%rax)
.LEHE23:
	movq	8(%rsp), %rbp
	testq	%rbp, %rbp
	je	.L208
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
.LEHB24:
	call	*24(%rax)
.LEHE24:
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L208
	movq	(%rdi), %rax
	call	*32(%rax)
.L208:
	movl	64(%rsp), %eax
	vmovdqa	48(%rsp), %xmm0
	movq	24(%rbx), %rdi
	movl	%eax, 48(%rbx)
	vmovups	%xmm0, 32(%rbx)
	testq	%rdi, %rdi
	je	.L210
.L219:
	movq	(%rdi), %rax
.LEHB25:
	call	*32(%rax)
.LEHE25:
.L210:
	movq	%rbp, 24(%rbx)
	testq	%rbp, %rbp
	je	.L214
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
.LEHB26:
	call	*24(%rax)
.LEHE26:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*32(%rax)
.L214:
	movq	%r12, %rdi
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	leaq	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev(%rip), %rdx
	leaq	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE(%rip), %rsi
	movq	%rbx, %rdi
.LEHB27:
	call	__cxa_throw@PLT
.L243:
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L219
	jmp	.L214
.L221:
	movq	%rax, %r13
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt12domain_errorD2Ev@PLT
.L206:
	movq	%r12, %rdi
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r13, %rdi
	call	_Unwind_Resume@PLT
.LEHE27:
.L223:
	movq	8(%rsp), %rdi
	movq	%rax, %r13
	testq	%rdi, %rdi
	je	.L240
	movq	(%rdi), %rax
	vzeroupper
	call	*32(%rax)
.L212:
	movq	0(%rbp), %rax
	movq	%rbp, %rdi
	call	*32(%rax)
.L213:
	movq	%rbx, %rdi
	call	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED2Ev
	jmp	.L206
.L224:
	movq	%rax, %r13
.L242:
	vzeroupper
	jmp	.L213
.L225:
	movq	%rax, %r13
	testq	%rbp, %rbp
	je	.L242
.L240:
	vzeroupper
	jmp	.L212
.L222:
	movq	%rax, %r13
	vzeroupper
	jmp	.L212
	.cfi_endproc
.LFE11479:
	.section	.gcc_except_table._ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,"aG",@progbits,_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,comdat
.LLSDA11479:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11479-.LLSDACSB11479
.LLSDACSB11479:
	.uleb128 .LEHB22-.LFB11479
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L221-.LFB11479
	.uleb128 0
	.uleb128 .LEHB23-.LFB11479
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L224-.LFB11479
	.uleb128 0
	.uleb128 .LEHB24-.LFB11479
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L223-.LFB11479
	.uleb128 0
	.uleb128 .LEHB25-.LFB11479
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L225-.LFB11479
	.uleb128 0
	.uleb128 .LEHB26-.LFB11479
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L222-.LFB11479
	.uleb128 0
	.uleb128 .LEHB27-.LFB11479
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE11479:
	.section	.text._ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,"axG",@progbits,_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_,comdat
	.size	_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_, .-_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_
	.section	.rodata._ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Unknown function operating on type %1%"
	.align 8
.LC4:
	.string	"Cause unknown: error caused by bad argument with value %1%"
	.section	.rodata._ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Error in function "
.LC6:
	.string	"double"
.LC7:
	.string	"%1%"
.LC8:
	.string	": "
	.section	.text._ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,"axG",@progbits,_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,comdat
	.p2align 4,,15
	.weak	_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_
	.type	_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_, @function
_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_:
.LFB11423:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA11423
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	-656(%rbp), %r15
	pushq	%r13
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movq	%rdx, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$672, %rsp
	movq	%r15, -720(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testq	%rdi, %rdi
	leaq	.LC3(%rip), %rax
	cmove	%rax, %rdi
	testq	%rsi, %rsi
	leaq	.LC4(%rip), %rax
	cmove	%rax, %rbx
	movq	%rdi, %rsi
	movq	%r15, %rdi
.LEHB28:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26
.LEHE28:
	leaq	-624(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movq	%rax, -704(%rbp)
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26
.LEHE29:
	leaq	-592(%rbp), %r14
	leaq	.LC5(%rip), %rsi
	movq	%r14, %rdi
.LEHB30:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.26
.LEHE30:
	leaq	.LC6(%rip), %rdx
	leaq	.LC7(%rip), %rsi
	movq	%r15, %rdi
.LEHB31:
	call	_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_
	movq	-648(%rbp), %rdx
	movq	-656(%rbp), %rsi
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	leaq	.LC8(%rip), %rsi
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
.LEHE31:
	leaq	-464(%rbp), %rbx
	leaq	128(%rbx), %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	vpxor	%xmm0, %xmm0, %xmm0
	movb	$0, -112(%rbp)
	xorl	%esi, %esi
	movq	16+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %r12
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	vmovdqu	%ymm0, -104(%rbp)
	movq	24+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	%rax, -336(%rbp)
	movq	-24(%r12), %rax
	movq	$0, -120(%rbp)
	movb	$0, -111(%rbp)
	movq	%r12, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	movq	-24(%r12), %rdi
	addq	%rbx, %rdi
	vzeroupper
.LEHB32:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE32:
	movq	32+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	leaq	16(%rbx,%rax), %rdi
	movq	40+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	%rax, (%rdi)
.LEHB33:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE33:
	movq	8+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	48+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	80(%rbx), %rdi
	movq	-24(%rax), %rax
	movq	%rcx, -464(%rbp,%rax)
	leaq	24+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	%rax, -464(%rbp)
	addq	$80, %rax
	movq	%rax, -336(%rbp)
	subq	$40, %rax
	movq	%rax, -448(%rbp)
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -440(%rbp)
	vmovaps	%xmm0, -432(%rbp)
	vmovaps	%xmm0, -416(%rbp)
	vmovaps	%xmm0, -400(%rbp)
	call	_ZNSt6localeC1Ev@PLT
	leaq	16+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	leaq	24(%rbx), %rsi
	movl	$24, -376(%rbp)
	movq	%rax, -440(%rbp)
	leaq	128(%rbx), %rdi
	leaq	112(%rbx), %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movb	$0, -352(%rbp)
.LEHB34:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE34:
	movq	-448(%rbp), %rax
	vmovsd	0(%r13), %xmm0
	leaq	16(%rbx), %rdi
	movq	-24(%rax), %rax
	movq	$17, -440(%rbp,%rax)
.LEHB35:
	call	_ZNSo9_M_insertIdEERSoT_@PLT
.LEHE35:
	leaq	-560(%rbp), %rax
	movb	$0, -544(%rbp)
	movq	%rax, -712(%rbp)
	addq	$16, %rax
	movq	%rax, -560(%rbp)
	movq	-400(%rbp), %rax
	movq	$0, -552(%rbp)
	testq	%rax, %rax
	je	.L253
	movq	-408(%rbp), %rcx
	movq	-416(%rbp), %r13
	movq	%rcx, -696(%rbp)
	cmpq	%r13, %rax
	ja	.L326
	leaq	-528(%rbp), %r15
	cmpq	$0, -696(%rbp)
	leaq	16(%r15), %rax
	movq	%rax, -528(%rbp)
	jne	.L266
	testq	%r13, %r13
	jne	.L327
.L266:
	subq	-696(%rbp), %r13
	movq	%r13, -680(%rbp)
	cmpq	$15, %r13
	ja	.L328
	cmpq	$1, %r13
	jne	.L269
	movq	-696(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -512(%rbp)
.L270:
	movq	-680(%rbp), %rax
	movq	-528(%rbp), %rdx
	leaq	16(%r15), %rcx
	movq	%rax, -520(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-528(%rbp), %rdx
	movq	-560(%rbp), %rax
	cmpq	%rcx, %rdx
	je	.L271
	movq	-712(%rbp), %rdi
	movq	-520(%rbp), %rsi
	movq	-512(%rbp), %rcx
	addq	$16, %rdi
	cmpq	%rdi, %rax
	je	.L272
	movq	-544(%rbp), %rdi
	movq	%rdx, -560(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rcx, -544(%rbp)
	testq	%rax, %rax
	je	.L273
	movq	%rax, -528(%rbp)
	movq	%rdi, -512(%rbp)
.L274:
	movq	-528(%rbp), %rax
	addq	$16, %r15
	movq	$0, -520(%rbp)
	movb	$0, (%rax)
	movq	-528(%rbp), %rdi
	cmpq	%r15, %rdi
	jne	.L325
	jmp	.L265
.L326:
	leaq	-496(%rbp), %r15
	leaq	16(%r15), %rdx
	movq	%rdx, -496(%rbp)
	testq	%rcx, %rcx
	je	.L329
	subq	-696(%rbp), %rax
	movq	%rax, %r13
	movq	%rax, -688(%rbp)
	cmpq	$15, %rax
	ja	.L330
	cmpq	$1, %rax
	jne	.L258
	movq	-696(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -480(%rbp)
.L259:
	movq	-688(%rbp), %rax
	movq	-496(%rbp), %rdx
	leaq	16(%r15), %rcx
	movq	%rax, -488(%rbp)
	movb	$0, (%rdx,%rax)
	movq	-496(%rbp), %rdx
	movq	-560(%rbp), %rax
	cmpq	%rcx, %rdx
	je	.L260
	movq	-712(%rbp), %rdi
	movq	-488(%rbp), %rsi
	movq	-480(%rbp), %rcx
	addq	$16, %rdi
	cmpq	%rdi, %rax
	je	.L261
	movq	-544(%rbp), %rdi
	movq	%rdx, -560(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rcx, -544(%rbp)
	testq	%rax, %rax
	je	.L262
	movq	%rax, -496(%rbp)
	movq	%rdi, -480(%rbp)
.L263:
	movq	-496(%rbp), %rax
	addq	$16, %r15
	movq	$0, -488(%rbp)
	movb	$0, (%rax)
	movq	-496(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L265
.L325:
	call	_ZdlPv@PLT
.L265:
	leaq	24+_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	vmovq	.LC9(%rip), %xmm1
	movq	-368(%rbp), %rdi
	movq	%rax, -464(%rbp)
	addq	$80, %rax
	movq	%rax, -336(%rbp)
	leaq	16+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	vpinsrq	$1, %rax, %xmm1, %xmm0
	leaq	112(%rbx), %rax
	vmovaps	%xmm0, -448(%rbp)
	cmpq	%rax, %rdi
	je	.L279
	call	_ZdlPv@PLT
.L279:
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	80(%rbx), %rdi
	movq	%rax, -440(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	48+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rdx
	leaq	128(%rbx), %rdi
	movq	40+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	-24(%rax), %rax
	movq	%rdx, -464(%rbp,%rax)
	movq	32+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	24+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rdx
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -448(%rbp,%rax)
	movq	-24(%r12), %rax
	movq	%r12, -464(%rbp)
	movq	%rdx, -464(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, -456(%rbp)
	movq	%rax, -336(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	-560(%rbp), %rdx
	movq	-704(%rbp), %rdi
	leaq	.LC7(%rip), %rsi
.LEHB36:
	call	_ZN5boost4math8policies6detail21replace_all_in_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_
	movq	-616(%rbp), %rdx
	movq	-624(%rbp), %rsi
	movq	%r14, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
	leaq	-672(%rbp), %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12domain_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE36:
	movq	%rbx, %rdi
.LEHB37:
	call	_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_
.LEHE37:
.L269:
	testq	%r13, %r13
	je	.L270
	leaq	16(%r15), %rax
	jmp	.L268
.L258:
	testq	%rax, %rax
	je	.L259
	movq	%rdx, %rax
	jmp	.L257
.L253:
	movq	-712(%rbp), %rdi
	leaq	96(%rbx), %rsi
.LEHB38:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
	jmp	.L265
.L328:
	leaq	-680(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	-680(%rbp), %rdx
	movq	%rax, -528(%rbp)
	movq	%rdx, -512(%rbp)
.L268:
	movq	-696(%rbp), %rsi
	movq	%r13, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L270
.L330:
	leaq	-688(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE38:
	movq	-688(%rbp), %rdx
	movq	%rax, -496(%rbp)
	movq	%rdx, -480(%rbp)
.L257:
	movq	-696(%rbp), %rsi
	movq	%r13, %rdx
	movq	%rax, %rdi
	call	memcpy@PLT
	jmp	.L259
.L261:
	movq	%rdx, -560(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rcx, -544(%rbp)
.L262:
	leaq	16(%r15), %rax
	movq	%rax, -496(%rbp)
	jmp	.L263
.L272:
	movq	%rdx, -560(%rbp)
	movq	%rsi, -552(%rbp)
	movq	%rcx, -544(%rbp)
.L273:
	leaq	16(%r15), %rax
	movq	%rax, -528(%rbp)
	jmp	.L274
.L260:
	movq	-712(%rbp), %rdi
	movq	%r15, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
	jmp	.L263
.L271:
	movq	-712(%rbp), %rdi
	movq	%r15, %rsi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@PLT
	jmp	.L274
.L296:
	movq	%rax, %r12
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt12domain_errorD1Ev@PLT
	movq	%r12, %rbx
.L282:
	movq	-712(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	.L252
	call	_ZdlPv@PLT
.L252:
	movq	-592(%rbp), %rdi
	leaq	16(%r14), %rax
	cmpq	%rax, %rdi
	je	.L285
	call	_ZdlPv@PLT
.L285:
	movq	-704(%rbp), %rax
	movq	-624(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	.L287
	call	_ZdlPv@PLT
.L287:
	movq	-720(%rbp), %rax
	movq	-656(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	.L288
	call	_ZdlPv@PLT
.L288:
	movq	%rbx, %rdi
.LEHB39:
	call	_Unwind_Resume@PLT
.LEHE39:
.L295:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L282
.L300:
	movq	%rax, %r13
	movq	24+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	-24(%r12), %rax
	movq	%r12, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	vzeroupper
.L249:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	leaq	128(%rbx), %rdi
	movq	%r13, %rbx
	movq	%rax, -336(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L252
.L298:
	movq	%rax, %r13
	vzeroupper
	jmp	.L249
.L294:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L252
.L293:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L285
.L297:
	movq	%rax, %r12
	vzeroupper
.L278:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L252
.L299:
	movq	%rax, %r13
	movq	-368(%rbp), %rdi
	leaq	16+_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	%rax, -440(%rbp)
	leaq	112(%rbx), %rax
	cmpq	%rax, %rdi
	je	.L322
	vzeroupper
	call	_ZdlPv@PLT
.L251:
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	80(%rbx), %rdi
	movq	%rax, -440(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	48+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, -464(%rbp,%rax)
	movq	32+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rax
	movq	40+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	%rax, -448(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -448(%rbp,%rax)
	movq	-24(%r12), %rax
	movq	24+_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movq	%r12, -464(%rbp)
	movq	%rcx, -464(%rbp,%rax)
	movq	$0, -456(%rbp)
	jmp	.L249
.L292:
	movq	%rax, %rbx
	vzeroupper
	jmp	.L287
.L327:
	leaq	.LC0(%rip), %rdi
.LEHB40:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L322:
	vzeroupper
	jmp	.L251
.L329:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE40:
.L301:
	movq	%rax, %r12
	movq	-712(%rbp), %rax
	movq	-560(%rbp), %rdi
	addq	$16, %rax
	cmpq	%rax, %rdi
	je	.L323
	vzeroupper
	call	_ZdlPv@PLT
	jmp	.L278
.L323:
	vzeroupper
	jmp	.L278
	.cfi_endproc
.LFE11423:
	.section	.gcc_except_table._ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,"aG",@progbits,_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,comdat
.LLSDA11423:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE11423-.LLSDACSB11423
.LLSDACSB11423:
	.uleb128 .LEHB28-.LFB11423
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB11423
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L292-.LFB11423
	.uleb128 0
	.uleb128 .LEHB30-.LFB11423
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L293-.LFB11423
	.uleb128 0
	.uleb128 .LEHB31-.LFB11423
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L294-.LFB11423
	.uleb128 0
	.uleb128 .LEHB32-.LFB11423
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L298-.LFB11423
	.uleb128 0
	.uleb128 .LEHB33-.LFB11423
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L300-.LFB11423
	.uleb128 0
	.uleb128 .LEHB34-.LFB11423
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L299-.LFB11423
	.uleb128 0
	.uleb128 .LEHB35-.LFB11423
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L297-.LFB11423
	.uleb128 0
	.uleb128 .LEHB36-.LFB11423
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L295-.LFB11423
	.uleb128 0
	.uleb128 .LEHB37-.LFB11423
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L296-.LFB11423
	.uleb128 0
	.uleb128 .LEHB38-.LFB11423
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L301-.LFB11423
	.uleb128 0
	.uleb128 .LEHB39-.LFB11423
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB40-.LFB11423
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L301-.LFB11423
	.uleb128 0
.LLSDACSE11423:
	.section	.text._ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,"axG",@progbits,_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_,comdat
	.size	_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_, .-_ZN5boost4math8policies6detail11raise_errorISt12domain_errordEEvPKcS6_RKT0_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC16:
	.string	"%e"
.LC17:
	.string	"]"
.LC18:
	.string	", "
.LC20:
	.string	"%e\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB10940:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$8, %esi
	movl	$74, %edi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movl	$-8, %r15d
	pushq	%r14
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movl	$17, %r14d
	pushq	%r13
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movabsq	$4294967297, %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$64, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	$1, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	$0, -88(%rbp)
	call	calloc@PLT
	movl	$4, %esi
	movl	$74, %edi
	movq	%rax, %rbx
	call	calloc@PLT
	movl	$2, %r9d
	vmovdqa	.LC22(%rip), %xmm4
	movl	$1, %ecx
	movq	%rax, %r12
	vmovdqa	.LC14(%rip), %ymm1
	jmp	.L337
.L389:
	addq	%rcx, 8(%rbx,%rdi)
	addl	$1, 4(%r12,%rsi)
	cmpl	$2, %eax
	je	.L356
	addl	$1, 8(%r12,%rsi)
	movl	$-5, %r8d
	addq	%rcx, 16(%rbx,%rdi)
	movl	$14, %edi
.L332:
	movl	%r14d, %esi
	vmovq	%rcx, %xmm3
	subl	%eax, %esi
	movl	%eax, %eax
	vpbroadcastq	%xmm3, %ymm0
	addq	%rdx, %rax
	movl	%esi, %r11d
	leaq	-64(%rbx,%rax,8), %r10
	leaq	-32(%r12,%rax,4), %rax
	shrl	$3, %r11d
	vpaddq	32(%r10), %ymm0, %ymm2
	vpaddq	(%r10), %ymm0, %ymm3
	vmovdqa	%ymm2, 32(%r10)
	vpaddd	(%rax), %ymm1, %ymm2
	vmovdqa	%ymm3, (%r10)
	vmovdqu	%ymm2, (%rax)
	cmpl	$1, %r11d
	je	.L334
	vpaddq	96(%r10), %ymm0, %ymm2
	vpaddq	64(%r10), %ymm0, %ymm0
	vmovdqa	%ymm0, 64(%r10)
	vpaddd	32(%rax), %ymm1, %ymm0
	vmovdqa	%ymm2, 96(%r10)
	vmovdqu	%ymm0, 32(%rax)
.L334:
	movl	%esi, %r10d
	andl	$-8, %r10d
	leal	(%r10,%r8), %eax
	subl	%r10d, %edi
	cmpl	%r10d, %esi
	je	.L335
	movslq	%eax, %rsi
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	leal	1(%rax), %esi
	cmpl	$1, %edi
	je	.L335
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	leal	2(%rax), %esi
	cmpl	$2, %edi
	je	.L335
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	leal	3(%rax), %esi
	cmpl	$3, %edi
	je	.L335
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	leal	4(%rax), %esi
	cmpl	$4, %edi
	je	.L335
	movslq	%esi, %rsi
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	leal	5(%rax), %esi
	cmpl	$5, %edi
	je	.L335
	movslq	%esi, %rsi
	addl	$6, %eax
	addq	%rdx, %rsi
	addq	%rcx, (%rbx,%rsi,8)
	addl	$1, (%r12,%rsi,4)
	cmpl	$6, %edi
	je	.L335
	cltq
	addq	%rdx, %rax
	addq	%rcx, (%rbx,%rax,8)
	addl	$1, (%r12,%rax,4)
.L335:
	leaq	1(%r9), %rax
	movq	%r9, -96(%rbp)
	cmpq	%r13, %rax
	je	.L336
	xorl	%ecx, %ecx
	popcntq	%r9, %rcx
	movq	%rax, %r9
.L337:
	vpclmulqdq	$0, -96(%rbp), %xmm4, %xmm0
	movslq	%ecx, %rcx
	vmovq	%xmm0, %rdx
	vpextrq	$1, %xmm0, %rax
	popcntq	%rax, %rax
	popcntq	%rdx, %rdx
	addq	%rax, %rdx
	leaq	-64(%rbx,%rdx,8), %rax
	shrq	$3, %rax
	negq	%rax
	andl	$3, %eax
	je	.L354
	leaq	-8(%rdx), %rsi
	leaq	0(,%rsi,8), %rdi
	salq	$2, %rsi
	addq	%rcx, (%rbx,%rdi)
	addl	$1, (%r12,%rsi)
	cmpl	$1, %eax
	jne	.L389
	movl	$16, %edi
	movl	$-7, %r8d
	jmp	.L332
.L336:
	addl	$1, 32(%r12)
	vpaddd	(%r12), %ymm1, %ymm1
	subq	$528, %rsp
	movl	$3, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	shrx	%rax, %rsp, %r14
	movl	$91, %edi
	leaq	0(,%r14,8), %r13
	vmovups	%xmm0, (%rbx)
	vmovups	%xmm0, 16(%rbx)
	vmovups	%xmm0, 32(%rbx)
	vmovups	%xmm0, 48(%rbx)
	movq	$0, 64(%rbx)
	vmovdqu	%ymm1, (%r12)
	vzeroupper
	call	putchar@PLT
	movq	(%rbx), %rdx
	testq	%rdx, %rdx
	js	.L338
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
.L339:
	movl	(%r12), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$1, %edi
	leaq	.LC16(%rip), %rsi
	movl	$1, %r15d
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movl	$1, %eax
	vdivsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LC15(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 0(,%r14,8)
	leaq	.LC18(%rip), %r14
	call	__printf_chk@PLT
	jmp	.L342
	.p2align 4,,10
	.p2align 3
.L391:
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm0, %xmm0
.L345:
	movl	(%r12,%r15,4), %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$1, %edi
	leaq	.LC16(%rip), %rsi
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movl	$1, %eax
	vdivsd	%xmm1, %xmm0, %xmm0
	vmulsd	.LC15(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%r15,8)
	addq	$1, %r15
	call	__printf_chk@PLT
	cmpq	$64, %r15
	je	.L390
.L342:
	movq	%r14, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	(%rbx,%r15,8), %rax
	testq	%rax, %rax
	jns	.L391
	movq	%rax, %rdx
	andl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L345
.L338:
	movq	%rdx, %rax
	andl	$1, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	shrq	%rax
	orq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	jmp	.L339
.L390:
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	movq	.LC10(%rip), %rcx
	subq	$528, %rsp
	movq	%rsp, %rbx
	vmovsd	.LC11(%rip), %xmm2
	movl	$63, %esi
	vmovsd	.LC19(%rip), %xmm3
	vmovq	%rcx, %xmm0
	leaq	_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials(%rip), %rcx
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L393:
	movl	%esi, %edi
	subl	%eax, %edi
	movq	%rdi, %rdx
	salq	$4, %rdx
	fldt	(%rcx,%rdx)
	movq	%rax, %rdx
	salq	$4, %rdx
	fstpl	-72(%rbp)
	vmovsd	-72(%rbp), %xmm0
	fldt	(%rcx,%rdx)
	vdivsd	%xmm0, %xmm3, %xmm1
	fstpl	-72(%rbp)
	vmovsd	-72(%rbp), %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
	vsubsd	.LC13(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
.L349:
	addq	$1, %rax
.L343:
	vmovsd	%xmm0, -8(%rbx,%rax,8)
	cmpq	$64, %rax
	je	.L392
	movq	.LC10(%rip), %rdi
	vmovq	%rdi, %xmm0
	cmpl	$63, %eax
	je	.L349
	cmpl	$1, %eax
	je	.L358
	cmpl	$62, %eax
	jne	.L393
.L358:
	vmovapd	%xmm2, %xmm0
	jmp	.L349
.L356:
	movl	$15, %edi
	movl	$-6, %r8d
	jmp	.L332
.L392:
	movq	.LC13(%rip), %rax
	movl	$19, %r14d
	movl	$63, %r12d
	movq	%rax, -96(%rbp)
	.p2align 4,,10
	.p2align 3
.L350:
	xorl	%r15d, %r15d
	vxorpd	%xmm2, %xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L352:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	-96(%rbp), %xmm0
	vmovsd	%xmm2, -104(%rbp)
	vcvtsi2sd	%r15d, %xmm1, %xmm1
	call	pow@PLT
	movl	%r12d, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	.LC10(%rip), %xmm6
	subl	%r15d, %eax
	vmovsd	%xmm0, -80(%rbp)
	vsubsd	-96(%rbp), %xmm6, %xmm0
	vcvtsi2sd	%eax, %xmm1, %xmm1
	call	pow@PLT
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	-104(%rbp), %xmm2
	vmulsd	(%rbx,%r15,8), %xmm0, %xmm0
	vfmadd231sd	0(%r13,%r15,8), %xmm0, %xmm2
	addq	$1, %r15
	cmpq	$64, %r15
	jne	.L352
	vmovapd	%xmm2, %xmm0
	movl	$1, %edi
	movl	$1, %eax
	leaq	.LC20(%rip), %rsi
	call	__printf_chk@PLT
	vmovsd	.LC13(%rip), %xmm3
	vmulsd	-96(%rbp), %xmm3, %xmm4
	vmovsd	%xmm4, -96(%rbp)
	subl	$1, %r14d
	jne	.L350
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	jne	.L394
	leaq	-48(%rbp), %rsp
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
.L354:
	.cfi_restore_state
	movl	$17, %edi
	movl	%r15d, %r8d
	jmp	.L332
.L394:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE10940:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB11697:
	.cfi_startproc
	cmpb	$0, _ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE(%rip)
	je	.L426
	ret
.L426:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movb	$1, _ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE(%rip)
	movzbl	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip), %eax
	testb	%al, %al
	je	.L427
.L398:
	movzbl	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip), %eax
	testb	%al, %al
	je	.L428
.L401:
	movzbl	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip), %eax
	testb	%al, %al
	je	.L429
.L404:
	movzbl	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip), %eax
	testb	%al, %al
	je	.L430
.L421:
	popq	%rax
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L430:
	.cfi_restore_state
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	je	.L421
	fldt	.LC74(%rip)
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip), %rdi
	fstpt	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC75(%rip)
	fstpt	16+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC76(%rip)
	fstpt	32+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC77(%rip)
	fstpt	48+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC78(%rip)
	fstpt	64+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC79(%rip)
	fstpt	80+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC80(%rip)
	fstpt	96+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC81(%rip)
	fstpt	112+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC82(%rip)
	fstpt	128+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC83(%rip)
	fstpt	144+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC84(%rip)
	fstpt	160+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC85(%rip)
	fstpt	176+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC86(%rip)
	fstpt	192+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC87(%rip)
	fstpt	208+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC88(%rip)
	fstpt	224+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	fldt	.LC89(%rip)
	fstpt	240+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d(%rip)
	popq	%rdx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	__cxa_guard_release@PLT
.L428:
	.cfi_restore_state
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	je	.L401
	fldt	.LC41(%rip)
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip), %rdi
	fstpt	_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC42(%rip)
	fstpt	16+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC43(%rip)
	fstpt	32+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC44(%rip)
	fstpt	48+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC45(%rip)
	fstpt	64+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC46(%rip)
	fstpt	80+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC47(%rip)
	fstpt	96+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC48(%rip)
	fstpt	112+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC49(%rip)
	fstpt	128+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC50(%rip)
	fstpt	144+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC51(%rip)
	fstpt	160+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC52(%rip)
	fstpt	176+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC53(%rip)
	fstpt	192+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC54(%rip)
	fstpt	208+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC55(%rip)
	fstpt	224+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC56(%rip)
	fstpt	240+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	fldt	.LC57(%rip)
	fstpt	256+_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num(%rip)
	call	__cxa_guard_release@PLT
	jmp	.L401
.L427:
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	je	.L398
	fldt	.LC24(%rip)
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip), %rdi
	fstpt	_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC25(%rip)
	fstpt	16+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC26(%rip)
	fstpt	32+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC27(%rip)
	fstpt	48+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC28(%rip)
	fstpt	64+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC29(%rip)
	fstpt	80+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC30(%rip)
	fstpt	96+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC31(%rip)
	fstpt	112+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC32(%rip)
	fstpt	128+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC33(%rip)
	fstpt	144+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC34(%rip)
	fstpt	160+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC35(%rip)
	fstpt	176+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC36(%rip)
	fstpt	192+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC37(%rip)
	fstpt	208+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC38(%rip)
	fstpt	224+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC39(%rip)
	fstpt	240+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	fldt	.LC40(%rip)
	fstpt	256+_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num(%rip)
	call	__cxa_guard_release@PLT
	jmp	.L398
.L429:
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip), %rdi
	call	__cxa_guard_acquire@PLT
	testl	%eax, %eax
	je	.L404
	fldt	.LC58(%rip)
	leaq	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip), %rdi
	fstpt	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC59(%rip)
	fstpt	16+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC60(%rip)
	fstpt	32+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC61(%rip)
	fstpt	48+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC62(%rip)
	fstpt	64+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC63(%rip)
	fstpt	80+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC64(%rip)
	fstpt	96+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC65(%rip)
	fstpt	112+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC66(%rip)
	fstpt	128+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC67(%rip)
	fstpt	144+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC68(%rip)
	fstpt	160+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC69(%rip)
	fstpt	176+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC70(%rip)
	fstpt	192+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC71(%rip)
	fstpt	208+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC72(%rip)
	fstpt	224+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	fldt	.LC73(%rip)
	fstpt	240+_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d(%rip)
	call	__cxa_guard_release@PLT
	jmp	.L404
	.cfi_endproc
.LFE11697:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.weak	_ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE
	.section	.bss._ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE,"awG",@nobits,_ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE,comdat
	.align 8
	.type	_ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE, @gnu_unique_object
	.size	_ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE, 8
_ZGVN5boost4math7lanczos19lanczos_initializerINS1_12lanczos17m64EeE11initializerE:
	.zero	8
	.weak	_ZTSN5boost9exceptionE
	.section	.rodata._ZTSN5boost9exceptionE,"aG",@progbits,_ZTSN5boost9exceptionE,comdat
	.align 16
	.type	_ZTSN5boost9exceptionE, @object
	.size	_ZTSN5boost9exceptionE, 19
_ZTSN5boost9exceptionE:
	.string	"N5boost9exceptionE"
	.weak	_ZTIN5boost9exceptionE
	.section	.data.rel.ro._ZTIN5boost9exceptionE,"awG",@progbits,_ZTIN5boost9exceptionE,comdat
	.align 8
	.type	_ZTIN5boost9exceptionE, @object
	.size	_ZTIN5boost9exceptionE, 16
_ZTIN5boost9exceptionE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN5boost9exceptionE
	.weak	_ZTSN5boost16exception_detail10clone_baseE
	.section	.rodata._ZTSN5boost16exception_detail10clone_baseE,"aG",@progbits,_ZTSN5boost16exception_detail10clone_baseE,comdat
	.align 32
	.type	_ZTSN5boost16exception_detail10clone_baseE, @object
	.size	_ZTSN5boost16exception_detail10clone_baseE, 39
_ZTSN5boost16exception_detail10clone_baseE:
	.string	"N5boost16exception_detail10clone_baseE"
	.weak	_ZTIN5boost16exception_detail10clone_baseE
	.section	.data.rel.ro._ZTIN5boost16exception_detail10clone_baseE,"awG",@progbits,_ZTIN5boost16exception_detail10clone_baseE,comdat
	.align 8
	.type	_ZTIN5boost16exception_detail10clone_baseE, @object
	.size	_ZTIN5boost16exception_detail10clone_baseE, 16
_ZTIN5boost16exception_detail10clone_baseE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN5boost16exception_detail10clone_baseE
	.weak	_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.section	.rodata._ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE,"aG",@progbits,_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE,comdat
	.align 32
	.type	_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE, @object
	.size	_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE, 66
_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE:
	.string	"N5boost16exception_detail19error_info_injectorISt12domain_errorEE"
	.weak	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.section	.data.rel.ro._ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE,"awG",@progbits,_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE,comdat
	.align 8
	.type	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE, @object
	.size	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE, 56
_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.long	0
	.long	2
	.quad	_ZTISt12domain_error
	.quad	2
	.quad	_ZTIN5boost9exceptionE
	.quad	4098
	.weak	_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.section	.rodata._ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,"aG",@progbits,_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,comdat
	.align 32
	.type	_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, @object
	.size	_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, 85
_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE:
	.string	"N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE"
	.weak	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.section	.data.rel.ro._ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,"awG",@progbits,_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,comdat
	.align 8
	.type	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, @object
	.size	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, 56
_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTSN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.long	0
	.long	2
	.quad	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.quad	2
	.quad	_ZTIN5boost16exception_detail10clone_baseE
	.quad	-6141
	.weak	_ZTVN5boost9exceptionE
	.section	.data.rel.ro._ZTVN5boost9exceptionE,"awG",@progbits,_ZTVN5boost9exceptionE,comdat
	.align 8
	.type	_ZTVN5boost9exceptionE, @object
	.size	_ZTVN5boost9exceptionE, 32
_ZTVN5boost9exceptionE:
	.quad	0
	.quad	_ZTIN5boost9exceptionE
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.weak	_ZTVN5boost16exception_detail10clone_baseE
	.section	.data.rel.ro._ZTVN5boost16exception_detail10clone_baseE,"awG",@progbits,_ZTVN5boost16exception_detail10clone_baseE,comdat
	.align 8
	.type	_ZTVN5boost16exception_detail10clone_baseE, @object
	.size	_ZTVN5boost16exception_detail10clone_baseE, 48
_ZTVN5boost16exception_detail10clone_baseE:
	.quad	0
	.quad	_ZTIN5boost16exception_detail10clone_baseE
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	0
	.quad	0
	.weak	_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.section	.data.rel.ro._ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE,"awG",@progbits,_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE,comdat
	.align 8
	.type	_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE, @object
	.size	_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE, 72
_ZTVN5boost16exception_detail19error_info_injectorISt12domain_errorEE:
	.quad	0
	.quad	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.quad	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	.quad	_ZN5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.quad	_ZNKSt11logic_error4whatEv
	.quad	-16
	.quad	_ZTIN5boost16exception_detail19error_info_injectorISt12domain_errorEE
	.quad	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED1Ev
	.quad	_ZThn16_N5boost16exception_detail19error_info_injectorISt12domain_errorED0Ev
	.weak	_ZTTN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.section	.data.rel.ro.local._ZTTN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,"awG",@progbits,_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,comdat
	.align 8
	.type	_ZTTN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, @object
	.size	_ZTTN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, 16
_ZTTN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE:
	.quad	_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE+24
	.quad	_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE+136
	.weak	_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.section	.data.rel.ro._ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,"awG",@progbits,_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE,comdat
	.align 8
	.type	_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, @object
	.size	_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE, 168
_ZTVN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE:
	.quad	56
	.quad	0
	.quad	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.quad	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.quad	_ZN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.quad	_ZNKSt11logic_error4whatEv
	.quad	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.quad	_ZNK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.quad	-16
	.quad	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.quad	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.quad	_ZThn16_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.quad	-56
	.quad	-56
	.quad	-56
	.quad	-56
	.quad	_ZTIN5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEEE
	.quad	_ZTv0_n24_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE5cloneEv
	.quad	_ZTv0_n32_NK5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEE7rethrowEv
	.quad	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED1Ev
	.quad	_ZTv0_n40_N5boost16exception_detail10clone_implINS0_19error_info_injectorISt12domain_errorEEED0Ev
	.weak	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d
	.section	.bss._ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d,"awG",@nobits,_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d,comdat
	.align 8
	.type	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d, @gnu_unique_object
	.size	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d, 8
_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d:
	.zero	8
	.weak	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d
	.section	.bss._ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d,"awG",@nobits,_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d,comdat
	.align 32
	.type	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d, @gnu_unique_object
	.size	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d, 256
_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_2IeEET_RKS4_E1d:
	.zero	256
	.weak	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d
	.section	.bss._ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d,"awG",@nobits,_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d,comdat
	.align 8
	.type	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d, @gnu_unique_object
	.size	_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d, 8
_ZGVZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d:
	.zero	8
	.weak	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d
	.section	.bss._ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d,"awG",@nobits,_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d,comdat
	.align 32
	.type	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d, @gnu_unique_object
	.size	_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d, 256
_ZZN5boost4math7lanczos12lanczos17m6418lanczos_sum_near_1IeEET_RKS4_E1d:
	.zero	256
	.weak	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num
	.section	.bss._ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num,"awG",@nobits,_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num,comdat
	.align 8
	.type	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num, @gnu_unique_object
	.size	_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num, 8
_ZGVZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num:
	.zero	8
	.weak	_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num
	.section	.bss._ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num,"awG",@nobits,_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num,comdat
	.align 32
	.type	_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num, @gnu_unique_object
	.size	_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num, 272
_ZZN5boost4math7lanczos12lanczos17m6411lanczos_sumIeEET_RKS4_E3num:
	.zero	272
	.weak	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num
	.section	.bss._ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num,"awG",@nobits,_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num,comdat
	.align 8
	.type	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num, @gnu_unique_object
	.size	_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num, 8
_ZGVZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num:
	.zero	8
	.weak	_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num
	.section	.bss._ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num,"awG",@nobits,_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num,comdat
	.align 32
	.type	_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num, @gnu_unique_object
	.size	_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num, 272
_ZZN5boost4math7lanczos12lanczos17m6423lanczos_sum_expG_scaledIeEET_RKS4_E3num:
	.zero	272
	.weak	_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials
	.section	.rodata._ZZN5boost4math19unchecked_factorialIeEET_jE10factorials,"aG",@progbits,_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials,comdat
	.align 32
	.type	_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials, @gnu_unique_object
	.size	_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials, 2736
_ZZN5boost4math19unchecked_factorialIeEET_jE10factorials:
	.long	0
	.long	2147483648
	.long	16383
	.long	0
	.long	0
	.long	2147483648
	.long	16383
	.long	0
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.long	0
	.long	3221225472
	.long	16385
	.long	0
	.long	0
	.long	3221225472
	.long	16387
	.long	0
	.long	0
	.long	4026531840
	.long	16389
	.long	0
	.long	0
	.long	3019898880
	.long	16392
	.long	0
	.long	0
	.long	2642411520
	.long	16395
	.long	0
	.long	0
	.long	2642411520
	.long	16398
	.long	0
	.long	0
	.long	2972712960
	.long	16401
	.long	0
	.long	0
	.long	3715891200
	.long	16404
	.long	0
	.long	0
	.long	2554675200
	.long	16408
	.long	0
	.long	0
	.long	3832012800
	.long	16411
	.long	0
	.long	0
	.long	3113510400
	.long	16415
	.long	0
	.long	0
	.long	2724321600
	.long	16419
	.long	0
	.long	0
	.long	2554051500
	.long	16423
	.long	0
	.long	0
	.long	2554051500
	.long	16427
	.long	0
	.long	3221225472
	.long	2713679718
	.long	16431
	.long	0
	.long	2550136832
	.long	3052889683
	.long	16435
	.long	0
	.long	1149239296
	.long	3625306499
	.long	16439
	.long	0
	.long	181403648
	.long	2265816562
	.long	16444
	.long	0
	.long	2922446848
	.long	2973884237
	.long	16448
	.long	0
	.long	3481493504
	.long	4089090826
	.long	16452
	.long	0
	.long	3307629824
	.long	2939034031
	.long	16457
	.long	0
	.long	3554464192
	.long	2204275523
	.long	16462
	.long	0
	.long	4211673020
	.long	3444180505
	.long	16466
	.long	0
	.long	469194313
	.long	2798396661
	.long	16471
	.long	0
	.long	3482890445
	.long	2361147182
	.long	16476
	.long	0
	.long	3947574631
	.long	4132007569
	.long	16480
	.long	0
	.long	1027352678
	.long	3744631860
	.long	16485
	.long	0
	.long	4184368607
	.long	3510592368
	.long	16490
	.long	0
	.long	1906123440
	.long	3400886357
	.long	16495
	.long	0
	.long	1906123440
	.long	3400886357
	.long	16500
	.long	0
	.long	489294790
	.long	3507164056
	.long	16505
	.long	0
	.long	2667359362
	.long	3726361809
	.long	16510
	.long	0
	.long	1172593838
	.long	4075708229
	.long	16515
	.long	0
	.long	4149244962
	.long	2292585878
	.long	16521
	.long	0
	.long	2381645383
	.long	2650802422
	.long	16526
	.long	0
	.long	3365074805
	.long	3147827876
	.long	16531
	.long	0
	.long	3564314006
	.long	3836415224
	.long	16536
	.long	0
	.long	2227696254
	.long	2397759515
	.long	16542
	.long	0
	.long	1109405361
	.long	3072129379
	.long	16547
	.long	0
	.long	1187659081
	.long	4032169810
	.long	16552
	.long	0
	.long	1200611629
	.long	2709114091
	.long	16558
	.long	0
	.long	2187711902
	.long	3725031875
	.long	16563
	.long	0
	.long	2007996979
	.long	2619163037
	.long	16569
	.long	0
	.long	1544318377
	.long	3765046866
	.long	16574
	.long	0
	.long	2073632904
	.long	2764956292
	.long	16580
	.long	0
	.long	3110449357
	.long	4147434438
	.long	16585
	.long	0
	.long	636607325
	.long	3175379492
	.long	16591
	.long	0
	.long	1034220384
	.long	2480765228
	.long	16597
	.long	0
	.long	2185159650
	.long	3953719582
	.long	16602
	.long	0
	.long	3386054951
	.long	3212397160
	.long	16608
	.long	0
	.long	3340947669
	.long	2660266398
	.long	16614
	.long	0
	.long	4161101875
	.long	2244599773
	.long	16620
	.long	0
	.long	2185837912
	.long	3857905861
	.long	16625
	.long	0
	.long	3523220909
	.long	3375667628
	.long	16631
	.long	0
	.long	3943174990
	.long	3006453981
	.long	16637
	.long	0
	.long	486494591
	.long	2724598921
	.long	16643
	.long	0
	.long	1723555617
	.long	2511739630
	.long	16649
	.long	0
	.long	2152704303
	.long	2354755903
	.long	16655
	.long	0
	.long	2253122881
	.long	2244376720
	.long	16661
	.long	0
	.long	35229143
	.long	2174239948
	.long	16667
	.long	0
	.long	2753711935
	.long	4280534897
	.long	16672
	.long	0
	.long	2753711935
	.long	4280534897
	.long	16678
	.long	0
	.long	3042536510
	.long	2173709127
	.long	16685
	.long	0
	.long	4077139872
	.long	2241637537
	.long	16691
	.long	0
	.long	2322098747
	.long	2346714297
	.long	16697
	.long	0
	.long	588181727
	.long	2493383941
	.long	16703
	.long	0
	.long	2311855024
	.long	2688179561
	.long	16709
	.long	0
	.long	1857502793
	.long	2940196395
	.long	16715
	.long	0
	.long	785598745
	.long	3261780376
	.long	16721
	.long	0
	.long	883798588
	.long	3669502923
	.long	16727
	.long	0
	.long	3356893004
	.long	4185526771
	.long	16733
	.long	0
	.long	4021078552
	.long	2419757664
	.long	16740
	.long	0
	.long	2564717780
	.long	2835653513
	.long	16746
	.long	0
	.long	1703425084
	.long	3367338547
	.long	16752
	.long	0
	.long	3592937176
	.long	4051329189
	.long	16758
	.long	0
	.long	243289036
	.long	2468778725
	.long	16765
	.long	0
	.long	3185991056
	.long	3047398738
	.long	16771
	.long	0
	.long	1835005172
	.long	3809248423
	.long	16777
	.long	0
	.long	4080449794
	.long	2410540017
	.long	16784
	.long	0
	.long	4288552203
	.long	3088504397
	.long	16790
	.long	0
	.long	662769066
	.long	4005404141
	.long	16796
	.long	0
	.long	2716643575
	.long	2628546467
	.long	16803
	.long	0
	.long	1393449737
	.long	3491038277
	.long	16809
	.long	0
	.long	2479727914
	.long	2345541342
	.long	16816
	.long	0
	.long	2431356037
	.long	3188470262
	.long	16822
	.long	0
	.long	2208428187
	.long	2192073305
	.long	16829
	.long	0
	.long	2064462488
	.long	3048351940
	.long	16835
	.long	0
	.long	1292537638
	.long	4286744916
	.long	16841
	.long	0
	.long	4005921221
	.long	3047607713
	.long	16848
	.long	0
	.long	1671296325
	.long	2190468044
	.long	16855
	.long	0
	.long	12683369
	.long	3183023877
	.long	16861
	.long	0
	.long	2894995501
	.long	2337533159
	.long	16868
	.long	0
	.long	3827496899
	.long	3469775783
	.long	16874
	.long	0
	.long	3944364498
	.long	2602331837
	.long	16881
	.long	0
	.long	3629367203
	.long	3944159191
	.long	16887
	.long	0
	.long	1101012664
	.long	3019746881
	.long	16894
	.long	0
	.long	2025969603
	.long	2335585478
	.long	16901
	.long	0
	.long	481222944
	.long	3649352310
	.long	16907
	.long	0
	.long	849477027
	.long	2879567057
	.long	16914
	.long	0
	.long	3025737246
	.long	2294654998
	.long	16921
	.long	0
	.long	2319409049
	.long	3692960388
	.long	16927
	.long	0
	.long	2958261676
	.long	3000530315
	.long	16934
	.long	0
	.long	2527362327
	.long	2461372524
	.long	16941
	.long	0
	.long	3649072942
	.long	4076648243
	.long	16947
	.long	0
	.long	1473338609
	.long	3407823141
	.long	16954
	.long	0
	.long	2182653547
	.long	2875350775
	.long	16961
	.long	0
	.long	3301506487
	.long	2448540894
	.long	16968
	.long	0
	.long	3795416083
	.long	4208429662
	.long	16974
	.long	0
	.long	1210962600
	.long	3649497598
	.long	16981
	.long	0
	.long	2133334099
	.long	3193310398
	.long	16988
	.long	0
	.long	742483322
	.long	2819094336
	.long	16995
	.long	0
	.long	661274208
	.long	2510755893
	.long	17002
	.long	0
	.long	3244913674
	.long	2255757247
	.long	17009
	.long	0
	.long	2391745107
	.long	4088560011
	.long	17015
	.long	0
	.long	2421085536
	.long	3737199385
	.long	17022
	.long	0
	.long	2433264820
	.long	3445230683
	.long	17029
	.long	0
	.long	550899856
	.long	3202987901
	.long	17036
	.long	0
	.long	1321774983
	.long	3002801157
	.long	17043
	.long	0
	.long	75085293
	.long	2838585469
	.long	17050
	.long	0
	.long	675545446
	.long	2705526775
	.long	17057
	.long	0
	.long	2159106392
	.long	2599842135
	.long	17064
	.long	0
	.long	3299593869
	.long	2518597068
	.long	17071
	.long	0
	.long	4161783734
	.long	2459567449
	.long	17078
	.long	0
	.long	2419034263
	.long	2421136708
	.long	17085
	.long	0
	.long	118434182
	.long	2402221578
	.long	17092
	.long	0
	.long	118434182
	.long	2402221578
	.long	17099
	.long	0
	.long	454903769
	.long	2420988934
	.long	17106
	.long	0
	.long	864664825
	.long	2458816886
	.long	17113
	.long	0
	.long	4173264742
	.long	2516445406
	.long	17120
	.long	0
	.long	4035243810
	.long	2595084325
	.long	17127
	.long	0
	.long	1810505849
	.long	2696454807
	.long	17134
	.long	0
	.long	2230917631
	.long	2822851126
	.long	17141
	.long	0
	.long	2151594346
	.long	2977225797
	.long	17148
	.long	0
	.long	3628246273
	.long	3163302409
	.long	17155
	.long	0
	.long	2306299035
	.long	3385722110
	.long	17162
	.long	0
	.long	1815390007
	.long	3650231650
	.long	17169
	.long	0
	.long	3783339414
	.long	3963923432
	.long	17176
	.long	0
	.long	1532142830
	.long	2167770627
	.long	17184
	.long	0
	.long	2996373934
	.long	2387934831
	.long	17191
	.long	0
	.long	3928082109
	.long	2649115203
	.long	17198
	.long	0
	.long	3750870024
	.long	2959558391
	.long	17205
	.long	0
	.long	3682857864
	.long	3329503190
	.long	17212
	.long	0
	.long	1688959457
	.long	3771702833
	.long	17219
	.long	0
	.long	728353666
	.long	2151049272
	.long	17227
	.long	0
	.long	2178645943
	.long	2470345648
	.long	17234
	.long	0
	.long	371575724
	.long	2856337156
	.long	17241
	.long	0
	.long	3251109654
	.long	3324954970
	.long	17248
	.long	0
	.long	1528192750
	.long	3896431606
	.long	17255
	.long	0
	.long	1337602558
	.long	2298285830
	.long	17263
	.long	0
	.long	2125273950
	.long	2729214423
	.long	17270
	.long	0
	.long	2506812087
	.long	3262264115
	.long	17277
	.long	0
	.long	264544868
	.long	3924911514
	.long	17284
	.long	0
	.long	1200361042
	.long	2376411268
	.long	17292
	.long	0
	.long	926069108
	.long	2896251233
	.long	17299
	.long	0
	.long	1035218345
	.long	3552433153
	.long	17306
	.long	0
	.long	3289723950
	.long	2192517336
	.long	17314
	.long	0
	.long	1133663953
	.long	2723517629
	.long	17321
	.long	0
	.long	2490821766
	.long	3404397036
	.long	17328
	.long	0
	.long	2461898112
	.long	4282093147
	.long	17335
	.long	0
	.long	4074502299
	.long	2709762069
	.long	17343
	.long	0
	.long	4081327765
	.long	3450712635
	.long	17350
	.long	0
	.long	1742185368
	.long	2210612782
	.long	17358
	.long	0
	.long	3520854242
	.long	2849618039
	.long	17365
	.long	0
	.long	1680426693
	.long	3695598395
	.long	17372
	.long	0
	.long	3193367850
	.long	2410800515
	.long	17380
	.long	0
	.long	3922859847
	.long	3164175676
	.long	17387
	.long	0
	.long	1823957692
	.long	4177700698
	.long	17394
	.long	0
	.long	204588945
	.long	2774254370
	.long	17402
	.long	0
	.section	.data.rel.ro,"aw",@progbits
	.align 8
.LC9:
	.quad	_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE+64
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 8
.LC11:
	.long	0
	.long	1078951936
	.align 8
.LC13:
	.long	0
	.long	1071644672
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC14:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	0
	.long	1067450368
	.align 8
.LC19:
	.long	3996419146
	.long	1376773240
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC22:
	.quad	3660434547
	.quad	0
	.align 16
.LC24:
	.long	1780295719
	.long	4125245626
	.long	16441
	.long	0
	.align 16
.LC25:
	.long	3874026644
	.long	2726610242
	.long	16442
	.long	0
	.align 16
.LC26:
	.long	628677999
	.long	3378042834
	.long	16441
	.long	0
	.align 16
.LC27:
	.long	1110306199
	.long	2603261079
	.long	16440
	.long	0
	.align 16
.LC28:
	.long	4057310164
	.long	2793438791
	.long	16438
	.long	0
	.align 16
.LC29:
	.long	4289756333
	.long	2212829750
	.long	16436
	.long	0
	.align 16
.LC30:
	.long	2079347106
	.long	2677156246
	.long	16433
	.long	0
	.align 16
.LC31:
	.long	2542058244
	.long	2522979494
	.long	16430
	.long	0
	.align 16
.LC32:
	.long	1330973579
	.long	3743561973
	.long	16426
	.long	0
	.align 16
.LC33:
	.long	1845129914
	.long	2193658062
	.long	16423
	.long	0
	.align 16
.LC34:
	.long	3737504750
	.long	4047695464
	.long	16418
	.long	0
	.align 16
.LC35:
	.long	2824060324
	.long	2908830362
	.long	16414
	.long	0
	.align 16
.LC36:
	.long	1030595242
	.long	3192470418
	.long	16409
	.long	0
	.align 16
.LC37:
	.long	1732621242
	.long	2586410603
	.long	16404
	.long	0
	.align 16
.LC38:
	.long	3255796472
	.long	2917462202
	.long	16398
	.long	0
	.align 16
.LC39:
	.long	1291436635
	.long	4093694028
	.long	16391
	.long	0
	.align 16
.LC40:
	.long	2973248691
	.long	2691471615
	.long	16384
	.long	0
	.align 16
.LC41:
	.long	1173219716
	.long	2652240877
	.long	16424
	.long	0
	.align 16
.LC42:
	.long	1954177006
	.long	3506034693
	.long	16424
	.long	0
	.align 16
.LC43:
	.long	2389977205
	.long	2171842382
	.long	16424
	.long	0
	.align 16
.LC44:
	.long	3606367406
	.long	3347425134
	.long	16422
	.long	0
	.align 16
.LC45:
	.long	3539930362
	.long	3591966744
	.long	16420
	.long	0
	.align 16
.LC46:
	.long	2025642984
	.long	2845385730
	.long	16418
	.long	0
	.align 16
.LC47:
	.long	2502202387
	.long	3442443856
	.long	16415
	.long	0
	.align 16
.LC48:
	.long	2418121331
	.long	3244194384
	.long	16412
	.long	0
	.align 16
.LC49:
	.long	3835676982
	.long	2406845310
	.long	16409
	.long	0
	.align 16
.LC50:
	.long	2657827801
	.long	2820733653
	.long	16405
	.long	0
	.align 16
.LC51:
	.long	3531731630
	.long	2602381613
	.long	16401
	.long	0
	.align 16
.LC52:
	.long	3003770908
	.long	3740343965
	.long	16396
	.long	0
	.align 16
.LC53:
	.long	2974084829
	.long	4105064914
	.long	16391
	.long	0
	.align 16
.LC54:
	.long	3698783643
	.long	3325757808
	.long	16386
	.long	0
	.align 16
.LC55:
	.long	3559969390
	.long	3751443289
	.long	16380
	.long	0
	.align 16
.LC56:
	.long	2089533731
	.long	2631955433
	.long	16374
	.long	0
	.align 16
.LC57:
	.long	1613638205
	.long	3460851394
	.long	16366
	.long	0
	.align 16
.LC58:
	.long	2143628004
	.long	2412507318
	.long	16385
	.long	0
	.align 16
.LC59:
	.long	2855448717
	.long	2275951985
	.long	49155
	.long	0
	.align 16
.LC60:
	.long	2617198105
	.long	3515426561
	.long	16387
	.long	0
	.align 16
.LC61:
	.long	2613569878
	.long	2867683580
	.long	49155
	.long	0
	.align 16
.LC62:
	.long	2129454353
	.long	2661267123
	.long	16386
	.long	0
	.align 16
.LC63:
	.long	3024700024
	.long	2822741627
	.long	49152
	.long	0
	.align 16
.LC64:
	.long	2390533593
	.long	3270236798
	.long	16381
	.long	0
	.align 16
.LC65:
	.long	1264517357
	.long	3730983100
	.long	49145
	.long	0
	.align 16
.LC66:
	.long	2328215247
	.long	3437286528
	.long	16372
	.long	0
	.align 16
.LC67:
	.long	460753646
	.long	3438853434
	.long	49133
	.long	0
	.align 16
.LC68:
	.long	577342150
	.long	2903852002
	.long	16355
	.long	0
	.align 16
.LC69:
	.long	2584896693
	.long	2241397044
	.long	49105
	.long	0
	.align 16
.LC70:
	.long	3822521911
	.long	3255901161
	.long	16333
	.long	0
	.align 16
.LC71:
	.long	977386505
	.long	3193946661
	.long	49100
	.long	0
	.align 16
.LC72:
	.long	1219430691
	.long	2847483947
	.long	16330
	.long	0
	.align 16
.LC73:
	.long	4019096927
	.long	2183265006
	.long	49095
	.long	0
	.align 16
.LC74:
	.long	1472026021
	.long	3162718736
	.long	16387
	.long	0
	.align 16
.LC75:
	.long	1342730051
	.long	2983699130
	.long	49157
	.long	0
	.align 16
.LC76:
	.long	2697502698
	.long	2304305020
	.long	16390
	.long	0
	.align 16
.LC77:
	.long	3644234363
	.long	3759440031
	.long	49157
	.long	0
	.align 16
.LC78:
	.long	4199786757
	.long	3488834760
	.long	16388
	.long	0
	.align 16
.LC79:
	.long	1310350677
	.long	3700522591
	.long	49154
	.long	0
	.align 16
.LC80:
	.long	2811407769
	.long	4287174225
	.long	16383
	.long	0
	.align 16
.LC81:
	.long	425984563
	.long	2445598831
	.long	49148
	.long	0
	.align 16
.LC82:
	.long	4063633010
	.long	2253085497
	.long	16375
	.long	0
	.align 16
.LC83:
	.long	419137877
	.long	2254112579
	.long	49136
	.long	0
	.align 16
.LC84:
	.long	3088251698
	.long	3806855657
	.long	16357
	.long	0
	.align 16
.LC85:
	.long	3964805317
	.long	2938398724
	.long	49107
	.long	0
	.align 16
.LC86:
	.long	2602729813
	.long	4268380671
	.long	16335
	.long	0
	.align 16
.LC87:
	.long	2229100376
	.long	4187160333
	.long	49102
	.long	0
	.align 16
.LC88:
	.long	2765082819
	.long	3732958968
	.long	16332
	.long	0
	.align 16
.LC89:
	.long	2881110420
	.long	2862189511
	.long	49097
	.long	0
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
