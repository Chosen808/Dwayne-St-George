	.file	"game.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/(808)/Documents/GitHub/Dwayne-St-George/myprojects/tikTakToe" "game.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"\nIf you want to play again then press 1: "
.LC1:
	.string	"%s"
.LC2:
	.string	"clear"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "game.c"
	.loc 1 33 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 33 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L2:
	.loc 1 37 5
	movl	$0, %eax
	call	run
	.loc 1 39 5
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 40 5
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 43 17
	movzbl	-9(%rbp), %eax
	.loc 1 43 8
	cmpb	$49, %al
	jne	.L3
	.loc 1 45 9
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 47 9
	jmp	.L2
.L3:
	.loc 1 53 9
	movl	$0, %edi
	call	exit@PLT
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	run
	.type	run, @function
run:
.LFB7:
	.loc 1 61 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 61 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 62 9
	movl	$0, -32(%rbp)
	.loc 1 64 10
	movabsq	$4050765991979987505, %rax
	movq	%rax, -17(%rbp)
	movb	$57, -9(%rbp)
	.loc 1 66 5
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	display
.L6:
	.loc 1 69 12
	movl	-32(%rbp), %edx
	leaq	-17(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	inputValue_t
	movq	%rax, -28(%rbp)
	.loc 1 71 16
	movl	-28(%rbp), %eax
	.loc 1 71 26
	movzbl	-24(%rbp), %edx
	.loc 1 71 20
	cltq
	movb	%dl, -17(%rbp,%rax)
	.loc 1 73 5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	system@PLT
	.loc 1 75 5
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	display
	.loc 1 78 28
	movzbl	-24(%rbp), %eax
	.loc 1 78 9
	movsbl	%al, %ecx
	movl	-32(%rbp), %edx
	leaq	-17(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	check
	.loc 1 78 8
	cmpl	$1, %eax
	je	.L9
	.loc 1 87 14
	addl	$1, -32(%rbp)
	.loc 1 89 9
	jmp	.L6
.L9:
	.loc 1 91 1
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	run, .-run
	.section	.rodata
.LC3:
	.string	"The Winner is: %c \n"
.LC4:
	.string	"The Game is Drawn "
	.text
	.globl	check
	.type	check, @function
check:
.LFB8:
	.loc 1 96 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movl	%edx, -32(%rbp)
	movb	%al, -28(%rbp)
.LBB2:
	.loc 1 97 14
	movl	$0, -8(%rbp)
	.loc 1 97 5
	jmp	.L11
.L14:
	.loc 1 99 16
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 99 12
	cmpb	%al, -28(%rbp)
	jne	.L12
	.loc 1 99 32 discriminator 1
	movl	-8(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 99 26 discriminator 1
	cmpb	%al, -28(%rbp)
	jne	.L12
	.loc 1 99 52 discriminator 2
	movl	-8(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 99 46 discriminator 2
	cmpb	%al, -28(%rbp)
	jne	.L12
	.loc 1 101 13
	movsbl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 103 20
	movl	$1, %eax
	jmp	.L10
.L12:
	.loc 1 97 29 discriminator 2
	addl	$3, -8(%rbp)
.L11:
	.loc 1 97 23 discriminator 1
	cmpl	$5, -8(%rbp)
	jle	.L14
.LBE2:
.LBB3:
	.loc 1 107 14
	movl	$0, -4(%rbp)
	.loc 1 107 5
	nop
	.loc 1 107 23
	cmpl	$2, -4(%rbp)
	jg	.L21
	.loc 1 109 16
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 109 12
	cmpb	%al, -28(%rbp)
	jne	.L16
	.loc 1 109 32 discriminator 1
	movl	-4(%rbp), %eax
	cltq
	leaq	3(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 109 26 discriminator 1
	cmpb	%al, -28(%rbp)
	jne	.L16
	.loc 1 109 52 discriminator 2
	movl	-4(%rbp), %eax
	cltq
	leaq	6(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 1 109 46 discriminator 2
	cmpb	%al, -28(%rbp)
	jne	.L16
	.loc 1 111 13
	movsbl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 113 20
	movl	$1, %eax
	jmp	.L10
.L16:
	.loc 1 116 16
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 116 12
	cmpb	%al, -28(%rbp)
	jne	.L17
	.loc 1 116 32 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	.loc 1 116 26 discriminator 1
	cmpb	%al, -28(%rbp)
	jne	.L17
	.loc 1 116 48 discriminator 2
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	.loc 1 116 42 discriminator 2
	cmpb	%al, -28(%rbp)
	jne	.L17
	.loc 1 118 13
	movsbl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 120 20
	movl	$1, %eax
	jmp	.L10
.L17:
	.loc 1 123 21
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 123 17
	cmpb	%al, -28(%rbp)
	jne	.L18
	.loc 1 123 37 discriminator 1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	.loc 1 123 31 discriminator 1
	cmpb	%al, -28(%rbp)
	jne	.L18
	.loc 1 123 53 discriminator 2
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	.loc 1 123 47 discriminator 2
	cmpb	%al, -28(%rbp)
	jne	.L18
	.loc 1 125 13
	movsbl	-28(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 127 20
	movl	$1, %eax
	jmp	.L10
.L18:
	.loc 1 130 17
	cmpl	$8, -32(%rbp)
	jne	.L19
	.loc 1 132 13
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 134 20
	movl	$1, %eax
	jmp	.L10
.L19:
	.loc 1 139 20
	movl	$0, %eax
	jmp	.L10
.L21:
.L10:
.LBE3:
	.loc 1 142 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	check, .-check
	.section	.rodata
.LC5:
	.string	"\nEnter Your Choice: X "
.LC6:
	.string	"\nEnter Your Choice: O "
.LC7:
	.string	"\nInput is not valid "
	.text
	.globl	inputValue_t
	.type	inputValue_t, @function
inputValue_t:
.LFB9:
	.loc 1 147 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	.loc 1 147 1
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.L23:
	.loc 1 153 19
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 153 8
	testl	%eax, %eax
	jne	.L24
	.loc 1 155 9
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L25
.L24:
	.loc 1 160 9
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L25:
	.loc 1 163 5
	leaq	-21(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.LBB4:
	.loc 1 167 14
	movl	$0, -20(%rbp)
	.loc 1 167 5
	jmp	.L26
.L31:
	.loc 1 170 25
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	.loc 1 170 19
	movzbl	-21(%rbp), %eax
	.loc 1 170 12
	cmpb	%al, %dl
	jne	.L27
	.loc 1 172 22
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	.loc 1 174 27
	movl	-44(%rbp), %eax
	andl	$1, %eax
	.loc 1 174 16
	testl	%eax, %eax
	jne	.L28
	.loc 1 176 27
	movb	$88, -12(%rbp)
	.loc 1 184 13
	jmp	.L30
.L28:
	.loc 1 181 27
	movb	$79, -12(%rbp)
	.loc 1 184 13
	jmp	.L30
.L27:
	.loc 1 190 22 discriminator 2
	movl	$-1, -16(%rbp)
	.loc 1 191 23 discriminator 2
	movb	$32, -12(%rbp)
	.loc 1 167 29 discriminator 2
	addl	$1, -20(%rbp)
.L26:
	.loc 1 167 23 discriminator 1
	cmpl	$8, -20(%rbp)
	jle	.L31
.L30:
.LBE4:
	.loc 1 197 15
	movl	-16(%rbp), %eax
	.loc 1 197 8
	cmpl	$-1, %eax
	jne	.L32
	.loc 1 199 9
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 201 9
	jmp	.L23
.L32:
	.loc 1 204 12
	movq	-16(%rbp), %rax
	.loc 1 205 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L34
	call	__stack_chk_fail@PLT
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	inputValue_t, .-inputValue_t
	.section	.rodata
.LC8:
	.string	"\t\t\t\t    Tic Tac Toe \n"
.LC9:
	.string	"Players 1 Symbol: X "
.LC10:
	.string	"Players 2 Symbol: O "
	.align 8
.LC11:
	.string	"\n\t\t\t           |           |            "
	.align 8
.LC12:
	.string	"\n\t\t\t     %c     |     %c     |     %c     "
	.align 8
.LC13:
	.string	"\n\t\t\t-----------|-----------|----------- "
	.align 8
.LC14:
	.string	"\n\t\t\t-----------|-----------|-----------"
.LC15:
	.string	"\n\n"
	.text
	.globl	display
	.type	display, @function
display:
.LFB10:
	.loc 1 209 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 210 5
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 211 5
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 212 5
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 214 5
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 215 82
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	.loc 1 215 5
	movsbl	%al, %ecx
	.loc 1 215 74
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 1 215 5
	movsbl	%al, %edx
	.loc 1 215 66
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 1 215 5
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 216 5
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 217 82
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	.loc 1 217 5
	movsbl	%al, %ecx
	.loc 1 217 74
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	.loc 1 217 5
	movsbl	%al, %edx
	.loc 1 217 66
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	.loc 1 217 5
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 218 5
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 219 82
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	.loc 1 219 5
	movsbl	%al, %ecx
	.loc 1 219 74
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	.loc 1 219 5
	movsbl	%al, %edx
	.loc 1 219 66
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	.loc 1 219 5
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 220 5
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 222 5
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 223 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	display, .-display
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2e3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	0x6b
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x10
	.long	0x6b
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x7
	.long	0x72
	.uleb128 0x11
	.long	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0xe
	.byte	0x8
	.long	0xad
	.uleb128 0x8
	.string	"i"
	.byte	0x10
	.byte	0x9
	.long	0x58
	.byte	0
	.uleb128 0x8
	.string	"ch"
	.byte	0x11
	.byte	0xa
	.long	0x6b
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.value	0x164
	.long	0x58
	.long	0xc4
	.uleb128 0x3
	.long	0x85
	.uleb128 0xa
	.byte	0
	.uleb128 0x12
	.long	.LASF13
	.byte	0x3
	.value	0x270
	.byte	0xd
	.long	0xd7
	.uleb128 0x3
	.long	0x58
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x3
	.value	0x317
	.long	0x58
	.long	0xed
	.uleb128 0x3
	.long	0x85
	.byte	0
	.uleb128 0x13
	.long	.LASF20
	.byte	0x2
	.value	0x1b5
	.byte	0xc
	.long	.LASF29
	.long	0x58
	.long	0x109
	.uleb128 0x3
	.long	0x85
	.uleb128 0xa
	.byte	0
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.byte	0xd0
	.byte	0x6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x136
	.uleb128 0x4
	.string	"sym"
	.byte	0xd0
	.byte	0x14
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x92
	.byte	0xf
	.long	0x8a
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb
	.uleb128 0x4
	.string	"sym"
	.byte	0x92
	.byte	0x22
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF15
	.byte	0x92
	.byte	0x2e
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.long	.LASF16
	.byte	0x94
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x2
	.long	.LASF17
	.byte	0x95
	.byte	0x13
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF23
	.byte	0x98
	.quad	.L23
	.uleb128 0xd
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x6
	.string	"i"
	.byte	0xa7
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5f
	.byte	0x5
	.long	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x244
	.uleb128 0x4
	.string	"sym"
	.byte	0x5f
	.byte	0x11
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.string	"ch"
	.byte	0x5f
	.byte	0x1e
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF15
	.byte	0x5f
	.byte	0x26
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x226
	.uleb128 0x6
	.string	"i"
	.byte	0x61
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x6
	.string	"i"
	.byte	0x6b
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"run"
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3e
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.long	.LASF21
	.byte	0x3f
	.byte	0x13
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2
	.long	.LASF22
	.byte	0x40
	.byte	0xa
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x5
	.long	.LASF24
	.byte	0x44
	.quad	.L6
	.byte	0
	.uleb128 0x17
	.long	0x6b
	.long	0x2ab
	.uleb128 0x18
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF25
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.long	.LASF26
	.byte	0x22
	.byte	0xa
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x5
	.long	.LASF24
	.byte	0x24
	.quad	.L2
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"exit"
.LASF16:
	.string	"value"
.LASF15:
	.string	"count"
.LASF28:
	.string	"myData"
.LASF27:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF19:
	.string	"check"
.LASF24:
	.string	"again"
.LASF29:
	.string	"__isoc99_scanf"
.LASF20:
	.string	"scanf"
.LASF17:
	.string	"info_t"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF21:
	.string	"info"
.LASF18:
	.string	"inputValue_t"
.LASF26:
	.string	"restart"
.LASF25:
	.string	"main"
.LASF22:
	.string	"symbol"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF30:
	.string	"display"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF14:
	.string	"system"
.LASF12:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF23:
	.string	"inputAgain"
.LASF6:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/c/Users/(808)/Documents/GitHub/Dwayne-St-George/myprojects/tikTakToe"
.LASF0:
	.string	"game.c"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
