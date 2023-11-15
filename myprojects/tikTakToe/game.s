	.file	"game.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Users/(808)/Documents/GitHub/Dwayne-St-George/myprojects/tikTakToe" "game.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"The Winner is: %c \n"
.LC1:
	.string	"The Game is Drawn "
	.text
	.globl	check
	.type	check, @function
check:
.LVL0:
.LFB53:
	.file 1 "game.c"
	.loc 1 96 1 view -0
	.cfi_startproc
	.loc 1 96 1 is_stmt 0 view .LVU1
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 97 5 is_stmt 1 view .LVU2
.LBB45:
	.loc 1 97 10 view .LVU3
.LVL1:
	.loc 1 97 23 view .LVU4
	.loc 1 99 9 view .LVU5
	.loc 1 99 16 is_stmt 0 view .LVU6
	movzbl	(%rdi), %eax
	.loc 1 99 12 view .LVU7
	cmpb	%al, %sil
	je	.L16
	.loc 1 97 29 is_stmt 1 view .LVU8
.LVL2:
	.loc 1 97 23 view .LVU9
	.loc 1 99 9 view .LVU10
	.loc 1 99 12 is_stmt 0 view .LVU11
	cmpb	3(%rdi), %sil
	je	.L12
.LVL3:
.L7:
	.loc 1 99 12 view .LVU12
.LBE45:
.LBB50:
	.loc 1 116 9 is_stmt 1 view .LVU13
	.loc 1 123 14 view .LVU14
	.loc 1 123 17 is_stmt 0 view .LVU15
	cmpb	%sil, 2(%rdi)
	je	.L17
.L9:
	.loc 1 130 14 is_stmt 1 view .LVU16
	.loc 1 139 20 is_stmt 0 view .LVU17
	movl	$0, %eax
	.loc 1 130 17 view .LVU18
	cmpl	$8, %edx
	je	.L18
.LVL4:
.L1:
	.loc 1 130 17 view .LVU19
.LBE50:
	.loc 1 142 1 view .LVU20
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL5:
.L16:
	.cfi_restore_state
.LBB65:
	.loc 1 99 26 view .LVU21
	cmpb	1(%rdi), %sil
	je	.L19
.L3:
	.loc 1 97 29 is_stmt 1 view .LVU22
.LVL6:
	.loc 1 97 23 view .LVU23
	.loc 1 99 9 view .LVU24
	.loc 1 99 12 is_stmt 0 view .LVU25
	cmpb	3(%rdi), %sil
	je	.L12
.LVL7:
.L13:
	.loc 1 99 12 view .LVU26
.LBE65:
.LBB66:
	.loc 1 109 26 discriminator 1 view .LVU27
	cmpb	%al, 3(%rdi)
	je	.L20
.L8:
	.loc 1 116 9 is_stmt 1 discriminator 1 view .LVU28
	.loc 1 116 26 is_stmt 0 discriminator 1 view .LVU29
	cmpb	%al, 4(%rdi)
	jne	.L9
	.loc 1 116 42 discriminator 2 view .LVU30
	cmpb	%al, 8(%rdi)
	je	.L21
	.loc 1 123 14 is_stmt 1 view .LVU31
	.loc 1 123 17 is_stmt 0 view .LVU32
	cmpb	%al, 2(%rdi)
	jne	.L9
	jmp	.L11
.LVL8:
.L19:
	.loc 1 123 17 view .LVU33
.LBE66:
.LBB67:
	.loc 1 99 46 view .LVU34
	cmpb	2(%rdi), %sil
	jne	.L3
.LVL9:
.L4:
	.loc 1 101 13 is_stmt 1 view .LVU35
.LBB46:
.LBI46:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 110 1 view .LVU36
.LBB47:
	.loc 2 112 3 view .LVU37
.LBE47:
.LBE46:
	.loc 1 101 13 is_stmt 0 view .LVU38
	movsbl	%sil, %edx
.LVL10:
.LBB49:
.LBB48:
	.loc 2 112 10 view .LVU39
	leaq	.LC0(%rip), %rsi
.LVL11:
	.loc 2 112 10 view .LVU40
	movl	$1, %edi
.LVL12:
	.loc 2 112 10 view .LVU41
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL13:
	.loc 2 112 10 view .LVU42
.LBE48:
.LBE49:
	.loc 1 103 13 is_stmt 1 view .LVU43
	.loc 1 103 20 is_stmt 0 view .LVU44
	movl	$1, %eax
	jmp	.L1
.LVL14:
.L12:
	.loc 1 99 26 discriminator 1 view .LVU45
	cmpb	%sil, 4(%rdi)
	je	.L22
.L5:
	.loc 1 97 29 is_stmt 1 discriminator 2 view .LVU46
.LVL15:
	.loc 1 97 23 discriminator 2 view .LVU47
.LBE67:
	.loc 1 107 5 discriminator 2 view .LVU48
.LBB68:
	.loc 1 107 10 discriminator 2 view .LVU49
	.loc 1 107 23 discriminator 2 view .LVU50
	.loc 1 109 9 discriminator 2 view .LVU51
	.loc 1 109 12 is_stmt 0 discriminator 2 view .LVU52
	cmpb	%al, %sil
	jne	.L7
	jmp	.L13
.LVL16:
.L22:
	.loc 1 109 12 discriminator 2 view .LVU53
.LBE68:
.LBB69:
	.loc 1 99 46 discriminator 2 view .LVU54
	cmpb	%sil, 5(%rdi)
	jne	.L5
	jmp	.L4
.LVL17:
.L20:
	.loc 1 99 46 discriminator 2 view .LVU55
.LBE69:
.LBB70:
	.loc 1 109 46 discriminator 2 view .LVU56
	cmpb	%al, 6(%rdi)
	jne	.L8
	.loc 1 111 13 is_stmt 1 view .LVU57
.LVL18:
.LBB51:
.LBI51:
	.loc 2 110 1 view .LVU58
.LBB52:
	.loc 2 112 3 view .LVU59
.LBE52:
.LBE51:
	.loc 1 111 13 is_stmt 0 view .LVU60
	movsbl	%al, %edx
.LVL19:
.LBB54:
.LBB53:
	.loc 2 112 10 view .LVU61
	leaq	.LC0(%rip), %rsi
.LVL20:
	.loc 2 112 10 view .LVU62
	movl	$1, %edi
.LVL21:
	.loc 2 112 10 view .LVU63
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL22:
	.loc 2 112 10 view .LVU64
.LBE53:
.LBE54:
	.loc 1 113 13 is_stmt 1 view .LVU65
	.loc 1 113 20 is_stmt 0 view .LVU66
	movl	$1, %eax
	jmp	.L1
.LVL23:
.L21:
	.loc 1 118 13 is_stmt 1 view .LVU67
.LBB55:
.LBI55:
	.loc 2 110 1 view .LVU68
.LBB56:
	.loc 2 112 3 view .LVU69
.LBE56:
.LBE55:
	.loc 1 118 13 is_stmt 0 view .LVU70
	movsbl	%al, %edx
.LVL24:
.LBB58:
.LBB57:
	.loc 2 112 10 view .LVU71
	leaq	.LC0(%rip), %rsi
.LVL25:
	.loc 2 112 10 view .LVU72
	movl	$1, %edi
.LVL26:
	.loc 2 112 10 view .LVU73
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL27:
	.loc 2 112 10 view .LVU74
.LBE57:
.LBE58:
	.loc 1 120 13 is_stmt 1 view .LVU75
	.loc 1 120 20 is_stmt 0 view .LVU76
	movl	$1, %eax
	jmp	.L1
.LVL28:
.L17:
	.loc 1 123 31 discriminator 1 view .LVU77
	cmpb	%sil, 4(%rdi)
	jne	.L9
.L11:
	.loc 1 123 47 discriminator 2 view .LVU78
	cmpb	%sil, 6(%rdi)
	jne	.L9
	.loc 1 125 13 is_stmt 1 view .LVU79
.LVL29:
.LBB59:
.LBI59:
	.loc 2 110 1 view .LVU80
.LBB60:
	.loc 2 112 3 view .LVU81
.LBE60:
.LBE59:
	.loc 1 125 13 is_stmt 0 view .LVU82
	movsbl	%sil, %edx
.LVL30:
.LBB62:
.LBB61:
	.loc 2 112 10 view .LVU83
	leaq	.LC0(%rip), %rsi
.LVL31:
	.loc 2 112 10 view .LVU84
	movl	$1, %edi
.LVL32:
	.loc 2 112 10 view .LVU85
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL33:
	.loc 2 112 10 view .LVU86
.LBE61:
.LBE62:
	.loc 1 127 13 is_stmt 1 view .LVU87
	.loc 1 127 20 is_stmt 0 view .LVU88
	movl	$1, %eax
	jmp	.L1
.LVL34:
.L18:
	.loc 1 132 13 is_stmt 1 view .LVU89
.LBB63:
.LBI63:
	.loc 2 110 1 view .LVU90
.LBB64:
	.loc 2 112 3 view .LVU91
	.loc 2 112 10 is_stmt 0 view .LVU92
	leaq	.LC1(%rip), %rdi
.LVL35:
	.loc 2 112 10 view .LVU93
	call	puts@PLT
.LVL36:
	.loc 2 112 10 view .LVU94
.LBE64:
.LBE63:
	.loc 1 134 13 is_stmt 1 view .LVU95
	.loc 1 134 20 is_stmt 0 view .LVU96
	movl	$1, %eax
	jmp	.L1
.LBE70:
	.cfi_endproc
.LFE53:
	.size	check, .-check
	.section	.rodata.str1.1
.LC2:
	.string	"\nEnter Your Choice: X "
.LC3:
	.string	"\nEnter Your Choice: O "
.LC4:
	.string	"%s"
.LC5:
	.string	"\nInput is not valid "
	.text
	.globl	inputValue_t
	.type	inputValue_t, @function
inputValue_t:
.LVL37:
.LFB54:
	.loc 1 147 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 147 1 is_stmt 0 view .LVU98
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rbx
	.loc 1 147 1 view .LVU99
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 153 19 view .LVU100
	andl	$1, %esi
.LVL38:
	.loc 1 153 19 view .LVU101
	movl	%esi, %ebp
	cmpl	$1, %esi
	sbbl	%eax, %eax
	andl	$9, %eax
	addl	$79, %eax
	movb	%al, 15(%rsp)
.LBB71:
.LBB72:
	.loc 2 112 10 view .LVU102
	leaq	.LC3(%rip), %r15
.LBE72:
.LBE71:
.LBB74:
.LBB75:
	leaq	.LC2(%rip), %r14
.LBE75:
.LBE74:
	.loc 1 163 5 view .LVU103
	leaq	.LC4(%rip), %r12
.LBB77:
.LBB78:
	.loc 2 112 10 view .LVU104
	leaq	.LC5(%rip), %r13
	jmp	.L24
.LVL39:
.L25:
	.loc 2 112 10 view .LVU105
.LBE78:
.LBE77:
	.loc 1 160 9 is_stmt 1 view .LVU106
.LBB80:
.LBI71:
	.loc 2 110 1 view .LVU107
.LBB73:
	.loc 2 112 3 view .LVU108
	.loc 2 112 10 is_stmt 0 view .LVU109
	movq	%r15, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL40:
.L26:
	.loc 2 112 10 view .LVU110
.LBE73:
.LBE80:
	.loc 1 163 5 is_stmt 1 view .LVU111
	leaq	23(%rsp), %rsi
	movq	%r12, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.LVL41:
	.loc 1 167 5 view .LVU112
.LBB81:
	.loc 1 167 10 view .LVU113
	.loc 1 167 23 view .LVU114
	.loc 1 170 19 is_stmt 0 view .LVU115
	movzbl	23(%rsp), %edx
	movl	$0, %eax
.LVL42:
.L28:
	.loc 1 170 9 is_stmt 1 view .LVU116
	.loc 1 170 12 is_stmt 0 view .LVU117
	cmpb	%dl, (%rbx,%rax)
	je	.L27
	.loc 1 190 13 is_stmt 1 discriminator 2 view .LVU118
.LVL43:
	.loc 1 191 13 discriminator 2 view .LVU119
	.loc 1 167 29 discriminator 2 view .LVU120
	.loc 1 167 23 discriminator 2 view .LVU121
	addq	$1, %rax
.LVL44:
	.loc 1 167 23 is_stmt 0 discriminator 2 view .LVU122
	cmpq	$9, %rax
	jne	.L28
.LVL45:
.L29:
	.loc 1 167 23 discriminator 2 view .LVU123
.LBE81:
	.loc 1 199 9 is_stmt 1 view .LVU124
.LBB82:
.LBI77:
	.loc 2 110 1 view .LVU125
.LBB79:
	.loc 2 112 3 view .LVU126
	.loc 2 112 10 is_stmt 0 view .LVU127
	movq	%r13, %rdi
	call	puts@PLT
.LVL46:
	.loc 2 112 10 view .LVU128
.LBE79:
.LBE82:
	.loc 1 201 9 is_stmt 1 view .LVU129
.L24:
	.loc 1 148 5 view .LVU130
	.loc 1 149 5 view .LVU131
	.loc 1 153 5 view .LVU132
	.loc 1 153 8 is_stmt 0 view .LVU133
	testl	%ebp, %ebp
	jne	.L25
	.loc 1 155 9 is_stmt 1 view .LVU134
.LVL47:
.LBB83:
.LBI74:
	.loc 2 110 1 view .LVU135
.LBB76:
	.loc 2 112 3 view .LVU136
	.loc 2 112 10 is_stmt 0 view .LVU137
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL48:
	jmp	.L26
.LVL49:
.L27:
	.loc 2 112 10 view .LVU138
.LBE76:
.LBE83:
.LBB84:
	.loc 1 172 13 is_stmt 1 view .LVU139
	.loc 1 174 13 view .LVU140
	.loc 1 174 13 is_stmt 0 view .LVU141
.LBE84:
	.loc 1 197 5 is_stmt 1 view .LVU142
	.loc 1 197 8 is_stmt 0 view .LVU143
	cmpl	$-1, %eax
	je	.L29
	.loc 1 204 5 is_stmt 1 view .LVU144
	.loc 1 204 12 is_stmt 0 view .LVU145
	movzbl	15(%rsp), %edx
	salq	$32, %rdx
	movl	%eax, %eax
	.loc 1 204 12 view .LVU146
	orq	%rdx, %rax
.LVL50:
	.loc 1 205 1 view .LVU147
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L34
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL51:
	.loc 1 205 1 view .LVU148
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
.LVL52:
.L34:
	.cfi_restore_state
	.loc 1 205 1 view .LVU149
	call	__stack_chk_fail@PLT
.LVL53:
	.cfi_endproc
.LFE54:
	.size	inputValue_t, .-inputValue_t
	.section	.rodata.str1.1
.LC6:
	.string	"\t\t\t\t    Tic Tac Toe \n"
.LC7:
	.string	"Players 1 Symbol: X "
.LC8:
	.string	"Players 2 Symbol: O "
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"\n\t\t\t           |           |            "
	.align 8
.LC10:
	.string	"\n\t\t\t     %c     |     %c     |     %c     "
	.align 8
.LC11:
	.string	"\n\t\t\t-----------|-----------|----------- "
	.align 8
.LC12:
	.string	"\n\t\t\t-----------|-----------|-----------"
	.section	.rodata.str1.1
.LC13:
	.string	"\n\n"
	.text
	.globl	display
	.type	display, @function
display:
.LVL54:
.LFB55:
	.loc 1 209 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 209 1 is_stmt 0 view .LVU151
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	.loc 1 210 5 is_stmt 1 view .LVU152
.LVL55:
.LBB85:
.LBI85:
	.loc 2 110 1 view .LVU153
.LBB86:
	.loc 2 112 3 view .LVU154
	.loc 2 112 10 is_stmt 0 view .LVU155
	leaq	.LC6(%rip), %rdi
.LVL56:
	.loc 2 112 10 view .LVU156
	call	puts@PLT
.LVL57:
	.loc 2 112 10 view .LVU157
.LBE86:
.LBE85:
	.loc 1 211 5 is_stmt 1 view .LVU158
.LBB87:
.LBI87:
	.loc 2 110 1 view .LVU159
.LBB88:
	.loc 2 112 3 view .LVU160
	.loc 2 112 10 is_stmt 0 view .LVU161
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
.LVL58:
	.loc 2 112 10 view .LVU162
.LBE88:
.LBE87:
	.loc 1 212 5 is_stmt 1 view .LVU163
.LBB89:
.LBI89:
	.loc 2 110 1 view .LVU164
.LBB90:
	.loc 2 112 3 view .LVU165
	.loc 2 112 10 is_stmt 0 view .LVU166
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
.LVL59:
	.loc 2 112 10 view .LVU167
.LBE90:
.LBE89:
	.loc 1 214 5 is_stmt 1 view .LVU168
.LBB91:
.LBI91:
	.loc 2 110 1 view .LVU169
.LBB92:
	.loc 2 112 3 view .LVU170
	.loc 2 112 10 is_stmt 0 view .LVU171
	leaq	.LC9(%rip), %r12
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL60:
	.loc 2 112 10 view .LVU172
.LBE92:
.LBE91:
	.loc 1 215 5 is_stmt 1 view .LVU173
.LBB93:
.LBI93:
	.loc 2 110 1 view .LVU174
.LBB94:
	.loc 2 112 3 view .LVU175
.LBE94:
.LBE93:
	.loc 1 215 5 is_stmt 0 view .LVU176
	movsbl	1(%rbx), %ecx
	movsbl	(%rbx), %edx
.LBB96:
.LBB95:
	.loc 2 112 10 view .LVU177
	movsbl	2(%rbx), %r8d
	leaq	.LC10(%rip), %rbp
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL61:
	.loc 2 112 10 view .LVU178
.LBE95:
.LBE96:
	.loc 1 216 5 is_stmt 1 view .LVU179
.LBB97:
.LBI97:
	.loc 2 110 1 view .LVU180
.LBB98:
	.loc 2 112 3 view .LVU181
	.loc 2 112 10 is_stmt 0 view .LVU182
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL62:
	.loc 2 112 10 view .LVU183
.LBE98:
.LBE97:
	.loc 1 217 5 is_stmt 1 view .LVU184
.LBB99:
.LBI99:
	.loc 2 110 1 view .LVU185
.LBB100:
	.loc 2 112 3 view .LVU186
.LBE100:
.LBE99:
	.loc 1 217 5 is_stmt 0 view .LVU187
	movsbl	4(%rbx), %ecx
	movsbl	3(%rbx), %edx
.LBB102:
.LBB101:
	.loc 2 112 10 view .LVU188
	movsbl	5(%rbx), %r8d
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL63:
	.loc 2 112 10 view .LVU189
.LBE101:
.LBE102:
	.loc 1 218 5 is_stmt 1 view .LVU190
.LBB103:
.LBI103:
	.loc 2 110 1 view .LVU191
.LBB104:
	.loc 2 112 3 view .LVU192
	.loc 2 112 10 is_stmt 0 view .LVU193
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL64:
	.loc 2 112 10 view .LVU194
.LBE104:
.LBE103:
	.loc 1 219 5 is_stmt 1 view .LVU195
.LBB105:
.LBI105:
	.loc 2 110 1 view .LVU196
.LBB106:
	.loc 2 112 3 view .LVU197
.LBE106:
.LBE105:
	.loc 1 219 5 is_stmt 0 view .LVU198
	movsbl	7(%rbx), %ecx
	movsbl	6(%rbx), %edx
.LBB108:
.LBB107:
	.loc 2 112 10 view .LVU199
	movsbl	8(%rbx), %r8d
	movq	%rbp, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL65:
	.loc 2 112 10 view .LVU200
.LBE107:
.LBE108:
	.loc 1 220 5 is_stmt 1 view .LVU201
.LBB109:
.LBI109:
	.loc 2 110 1 view .LVU202
.LBB110:
	.loc 2 112 3 view .LVU203
	.loc 2 112 10 is_stmt 0 view .LVU204
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL66:
	.loc 2 112 10 view .LVU205
.LBE110:
.LBE109:
	.loc 1 222 5 is_stmt 1 view .LVU206
.LBB111:
.LBI111:
	.loc 2 110 1 view .LVU207
.LBB112:
	.loc 2 112 3 view .LVU208
	.loc 2 112 10 is_stmt 0 view .LVU209
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
.LVL67:
	.loc 2 112 10 view .LVU210
.LBE112:
.LBE111:
	.loc 1 223 1 view .LVU211
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL68:
	.loc 1 223 1 view .LVU212
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	display, .-display
	.section	.rodata.str1.1
.LC14:
	.string	"clear"
	.text
	.globl	run
	.type	run, @function
run:
.LFB52:
	.loc 1 61 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 61 1 is_stmt 0 view .LVU214
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 62 5 is_stmt 1 view .LVU215
.LVL69:
	.loc 1 63 5 view .LVU216
	.loc 1 64 5 view .LVU217
	.loc 1 64 10 is_stmt 0 view .LVU218
	movabsq	$4050765991979987505, %rax
	movq	%rax, 15(%rsp)
	movb	$57, 23(%rsp)
	.loc 1 66 5 is_stmt 1 view .LVU219
	leaq	15(%rsp), %rdi
	call	display
.LVL70:
	.loc 1 62 9 is_stmt 0 view .LVU220
	movl	$0, %r12d
	.loc 1 73 5 view .LVU221
	leaq	.LC14(%rip), %r13
	jmp	.L38
.LVL71:
.L42:
	.loc 1 87 9 is_stmt 1 view .LVU222
	.loc 1 87 14 is_stmt 0 view .LVU223
	addl	$1, %r12d
.LVL72:
	.loc 1 89 9 is_stmt 1 view .LVU224
.L38:
	.loc 1 69 5 view .LVU225
	.loc 1 69 12 is_stmt 0 view .LVU226
	leaq	15(%rsp), %rbp
	movl	%r12d, %esi
	movq	%rbp, %rdi
	call	inputValue_t
.LVL73:
	.loc 1 69 12 view .LVU227
	movq	%rax, %rbx
	salq	$24, %rbx
	sarq	$56, %rbx
.LVL74:
	.loc 1 71 5 is_stmt 1 view .LVU228
	.loc 1 71 20 is_stmt 0 view .LVU229
	cltq
.LVL75:
	.loc 1 71 20 view .LVU230
	movb	%bl, 15(%rsp,%rax)
	.loc 1 73 5 is_stmt 1 view .LVU231
	movq	%r13, %rdi
	call	system@PLT
.LVL76:
	.loc 1 75 5 view .LVU232
	movq	%rbp, %rdi
	call	display
.LVL77:
	.loc 1 78 5 view .LVU233
	.loc 1 78 9 is_stmt 0 view .LVU234
	movsbl	%bl, %esi
	movl	%r12d, %edx
	movq	%rbp, %rdi
	call	check
.LVL78:
	.loc 1 78 8 view .LVU235
	cmpl	$1, %eax
	jne	.L42
	.loc 1 91 1 view .LVU236
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L43
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
.LVL79:
	.loc 1 91 1 view .LVU237
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
.LVL80:
	.loc 1 91 1 view .LVU238
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.LVL81:
.L43:
	.cfi_restore_state
	.loc 1 91 1 view .LVU239
	call	__stack_chk_fail@PLT
.LVL82:
	.cfi_endproc
.LFE52:
	.size	run, .-run
	.section	.rodata.str1.8
	.align 8
.LC15:
	.string	"\nIf you want to play again then press 1: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB51:
	.loc 1 33 1 is_stmt 1 view -0
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
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
	.loc 1 33 1 is_stmt 0 view .LVU241
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LBB113:
.LBB114:
	.loc 2 112 10 view .LVU242
	leaq	.LC15(%rip), %r12
.LBE114:
.LBE113:
	.loc 1 40 5 view .LVU243
	leaq	7(%rsp), %rbp
	leaq	.LC4(%rip), %rbx
	.loc 1 45 9 view .LVU244
	leaq	.LC14(%rip), %r13
	jmp	.L45
.L49:
	.loc 1 45 9 is_stmt 1 view .LVU245
	movq	%r13, %rdi
	call	system@PLT
.LVL83:
	.loc 1 47 9 view .LVU246
.L45:
	.loc 1 34 5 view .LVU247
	.loc 1 37 5 view .LVU248
	movl	$0, %eax
	call	run
.LVL84:
	.loc 1 39 5 view .LVU249
.LBB116:
.LBI113:
	.loc 2 110 1 view .LVU250
.LBB115:
	.loc 2 112 3 view .LVU251
	.loc 2 112 10 is_stmt 0 view .LVU252
	movq	%r12, %rdi
	call	puts@PLT
.LVL85:
	.loc 2 112 10 view .LVU253
.LBE115:
.LBE116:
	.loc 1 40 5 is_stmt 1 view .LVU254
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.LVL86:
	.loc 1 43 5 view .LVU255
	.loc 1 43 8 is_stmt 0 view .LVU256
	cmpb	$49, 7(%rsp)
	je	.L49
	.loc 1 53 9 is_stmt 1 view .LVU257
	movl	$0, %edi
	call	exit@PLT
.LVL87:
	.cfi_endproc
.LFE51:
	.size	main, .-main
.Letext0:
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xaa2
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x11
	.long	0x6b
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x19
	.long	0x6b
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x11
	.long	0x72
	.uleb128 0x1a
	.long	0x85
	.uleb128 0x1b
	.long	.LASF30
	.byte	0x8
	.byte	0x1
	.byte	0xe
	.byte	0x8
	.long	0xb2
	.uleb128 0x12
	.string	"i"
	.byte	0x10
	.byte	0x9
	.long	0x58
	.byte	0
	.uleb128 0x12
	.string	"ch"
	.byte	0x11
	.byte	0xa
	.long	0x6b
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	.LASF12
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x58
	.long	0xce
	.uleb128 0x9
	.long	0x58
	.uleb128 0x9
	.long	0x85
	.uleb128 0xb
	.byte	0
	.uleb128 0x1d
	.long	.LASF13
	.byte	0x3
	.value	0x270
	.byte	0xd
	.long	0xe1
	.uleb128 0x9
	.long	0x58
	.byte	0
	.uleb128 0x1e
	.long	.LASF14
	.byte	0x3
	.value	0x317
	.byte	0xc
	.long	0x58
	.long	0xf8
	.uleb128 0x9
	.long	0x85
	.byte	0
	.uleb128 0x1f
	.long	.LASF19
	.byte	0x4
	.value	0x1b5
	.byte	0xc
	.long	.LASF31
	.long	0x58
	.long	0x114
	.uleb128 0x9
	.long	0x85
	.uleb128 0xb
	.byte	0
	.uleb128 0x20
	.long	.LASF25
	.byte	0x1
	.byte	0xd0
	.byte	0x6
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x466
	.uleb128 0xa
	.string	"sym"
	.byte	0xd0
	.byte	0x14
	.long	0x66
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI85
	.byte	.LVU153
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.byte	0xd2
	.long	0x191
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x2
	.quad	.LVL57
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI87
	.byte	.LVU159
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.byte	0xd3
	.long	0x1dd
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x2
	.quad	.LVL58
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI89
	.byte	.LVU164
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0xd4
	.long	0x229
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x2
	.quad	.LVL59
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI91
	.byte	.LVU169
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0xd6
	.long	0x273
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST31
	.long	.LVUS31
	.uleb128 0x2
	.quad	.LVL60
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI93
	.byte	.LVU174
	.long	.LLRL32
	.byte	0xd7
	.byte	0x5
	.long	0x2b2
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x2
	.quad	.LVL61
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI97
	.byte	.LVU180
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.byte	0xd8
	.long	0x303
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x2
	.quad	.LVL62
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC11
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI99
	.byte	.LVU185
	.long	.LLRL35
	.byte	0xd9
	.byte	0x5
	.long	0x342
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x2
	.quad	.LVL63
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI103
	.byte	.LVU191
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.byte	0xda
	.long	0x393
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x2
	.quad	.LVL64
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC12
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI105
	.byte	.LVU196
	.long	.LLRL38
	.byte	0xdb
	.byte	0x5
	.long	0x3d2
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x2
	.quad	.LVL65
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x9ba
	.quad	.LBI109
	.byte	.LVU202
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.byte	0xdc
	.long	0x41c
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x2
	.quad	.LVL66
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x9ba
	.quad	.LBI111
	.byte	.LVU207
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.byte	0xde
	.byte	0x5
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x2
	.quad	.LVL67
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF17
	.byte	0x92
	.byte	0xf
	.long	0x8f
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x5db
	.uleb128 0xa
	.string	"sym"
	.byte	0x92
	.byte	0x22
	.long	0x66
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x15
	.long	.LASF15
	.byte	0x92
	.byte	0x2e
	.long	0x58
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0xc
	.long	.LASF21
	.byte	0x94
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0xd
	.long	.LASF16
	.byte	0x95
	.byte	0x13
	.long	0x8f
	.long	.LLST18
	.long	.LVUS18
	.uleb128 0xe
	.long	.LASF23
	.byte	0x98
	.quad	.L24
	.uleb128 0x16
	.long	.LLRL25
	.long	0x4f6
	.uleb128 0xf
	.string	"i"
	.byte	0xa7
	.long	0x58
	.long	.LLST26
	.long	.LVUS26
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI71
	.byte	.LVU107
	.long	.LLRL19
	.byte	0xa0
	.byte	0x9
	.long	0x535
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST20
	.long	.LVUS20
	.uleb128 0x2
	.quad	.LVL40
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI74
	.byte	.LVU135
	.long	.LLRL21
	.byte	0x9b
	.byte	0x9
	.long	0x574
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x2
	.quad	.LVL48
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI77
	.byte	.LVU125
	.long	.LLRL23
	.byte	0xc7
	.byte	0x9
	.long	0x5ae
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x2
	.quad	.LVL46
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LVL41
	.long	0xf8
	.long	0x5cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.byte	0
	.uleb128 0x10
	.quad	.LVL53
	.long	0xa55
	.byte	0
	.uleb128 0x14
	.long	.LASF18
	.byte	0x5f
	.byte	0x5
	.long	0x58
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dd
	.uleb128 0xa
	.string	"sym"
	.byte	0x5f
	.byte	0x11
	.long	0x66
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xa
	.string	"ch"
	.byte	0x5f
	.byte	0x1e
	.long	0x6b
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x15
	.long	.LASF15
	.byte	0x5f
	.byte	0x26
	.long	0x58
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x16
	.long	.LLRL3
	.long	0x69e
	.uleb128 0xf
	.string	"i"
	.byte	0x61
	.long	0x58
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.long	0x9ba
	.quad	.LBI46
	.byte	.LVU36
	.long	.LLRL5
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x2
	.quad	.LVL13
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LLRL7
	.uleb128 0xf
	.string	"i"
	.byte	0x6b
	.long	0x58
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI51
	.byte	.LVU58
	.long	.LLRL9
	.byte	0x6f
	.byte	0xd
	.long	0x6f9
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x2
	.quad	.LVL22
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI55
	.byte	.LVU68
	.long	.LLRL11
	.byte	0x76
	.byte	0xd
	.long	0x73f
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x2
	.quad	.LVL27
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI59
	.byte	.LVU80
	.long	.LLRL13
	.byte	0x7d
	.byte	0xd
	.long	0x792
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x2
	.quad	.LVL33
	.long	0xb2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x9ba
	.quad	.LBI63
	.byte	.LVU90
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.byte	0x84
	.byte	0xd
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x2
	.quad	.LVL36
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.string	"run"
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x8dc
	.uleb128 0xd
	.long	.LASF15
	.byte	0x3e
	.byte	0x9
	.long	0x58
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0xd
	.long	.LASF20
	.byte	0x3f
	.byte	0x13
	.long	0x8f
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0xc
	.long	.LASF22
	.byte	0x40
	.long	0x8dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0xe
	.long	.LASF24
	.byte	0x44
	.quad	.L38
	.uleb128 0x6
	.quad	.LVL70
	.long	0x114
	.long	0x856
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0x6
	.quad	.LVL73
	.long	0x466
	.long	0x874
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL76
	.long	0xe1
	.long	0x88c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL77
	.long	0x114
	.long	0x8a4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.quad	.LVL78
	.long	0x5db
	.long	0x8ce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL82
	.long	0xa55
	.byte	0
	.uleb128 0x24
	.long	0x6b
	.long	0x8ec
	.uleb128 0x25
	.long	0x2e
	.byte	0x8
	.byte	0
	.uleb128 0x26
	.long	.LASF26
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.long	0x58
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ba
	.uleb128 0xc
	.long	.LASF27
	.byte	0x22
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0xe
	.long	.LASF24
	.byte	0x24
	.quad	.L45
	.uleb128 0x5
	.long	0x9ba
	.quad	.LBI113
	.byte	.LVU250
	.long	.LLRL44
	.byte	0x27
	.byte	0x5
	.long	0x963
	.uleb128 0x3
	.long	0x9cb
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x2
	.quad	.LVL85
	.long	0x9f4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.quad	.LVL83
	.long	0xe1
	.long	0x97b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.quad	.LVL84
	.long	0x7dd
	.uleb128 0x6
	.quad	.LVL86
	.long	0xf8
	.long	0x9a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL87
	.long	0xce
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF28
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x58
	.byte	0x3
	.long	0x9d9
	.uleb128 0x28
	.long	.LASF32
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0x8a
	.uleb128 0xb
	.byte	0
	.uleb128 0x8
	.uleb128 0x19
	.byte	0x9e
	.uleb128 0x17
	.byte	0x9
	.byte	0x9
	.byte	0x9
	.byte	0x9
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x20
	.byte	0x54
	.byte	0x69
	.byte	0x63
	.byte	0x20
	.byte	0x54
	.byte	0x61
	.byte	0x63
	.byte	0x20
	.byte	0x54
	.byte	0x6f
	.byte	0x65
	.byte	0x20
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x29
	.long	.LASF33
	.long	.LASF34
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x50
	.byte	0x6c
	.byte	0x61
	.byte	0x79
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x31
	.byte	0x20
	.byte	0x53
	.byte	0x79
	.byte	0x6d
	.byte	0x62
	.byte	0x6f
	.byte	0x6c
	.byte	0x3a
	.byte	0x20
	.byte	0x58
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0x50
	.byte	0x6c
	.byte	0x61
	.byte	0x79
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x20
	.byte	0x32
	.byte	0x20
	.byte	0x53
	.byte	0x79
	.byte	0x6d
	.byte	0x62
	.byte	0x6f
	.byte	0x6c
	.byte	0x3a
	.byte	0x20
	.byte	0x4f
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x9e
	.uleb128 0x16
	.byte	0xa
	.byte	0x49
	.byte	0x6e
	.byte	0x70
	.byte	0x75
	.byte	0x74
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x74
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x69
	.byte	0x64
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x2a
	.long	.LASF35
	.long	.LASF35
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x9e
	.uleb128 0x14
	.byte	0x54
	.byte	0x68
	.byte	0x65
	.byte	0x20
	.byte	0x47
	.byte	0x61
	.byte	0x6d
	.byte	0x65
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0x20
	.byte	0x44
	.byte	0x72
	.byte	0x61
	.byte	0x77
	.byte	0x6e
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.uleb128 0x2d
	.byte	0x9e
	.uleb128 0x2b
	.byte	0xa
	.byte	0x49
	.byte	0x66
	.byte	0x20
	.byte	0x79
	.byte	0x6f
	.byte	0x75
	.byte	0x20
	.byte	0x77
	.byte	0x61
	.byte	0x6e
	.byte	0x74
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x70
	.byte	0x6c
	.byte	0x61
	.byte	0x79
	.byte	0x20
	.byte	0x61
	.byte	0x67
	.byte	0x61
	.byte	0x69
	.byte	0x6e
	.byte	0x20
	.byte	0x74
	.byte	0x68
	.byte	0x65
	.byte	0x6e
	.byte	0x20
	.byte	0x70
	.byte	0x72
	.byte	0x65
	.byte	0x73
	.byte	0x73
	.byte	0x20
	.byte	0x31
	.byte	0x3a
	.byte	0x20
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS27:
	.uleb128 0
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL68-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LFE55-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU153
	.uleb128 .LVU157
.LLST28:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2521
	.sleb128 0
	.byte	0
.LVUS29:
	.uleb128 .LVU159
	.uleb128 .LVU162
.LLST29:
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2559
	.sleb128 0
	.byte	0
.LVUS30:
	.uleb128 .LVU164
	.uleb128 .LVU167
.LLST30:
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2585
	.sleb128 0
	.byte	0
.LVUS31:
	.uleb128 .LVU169
	.uleb128 .LVU172
.LLST31:
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU174
	.uleb128 .LVU178
.LLST33:
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU180
	.uleb128 .LVU183
.LLST34:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC11
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU185
	.uleb128 .LVU189
.LLST36:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU191
	.uleb128 .LVU194
.LLST37:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL64-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC12
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU196
	.uleb128 .LVU200
.LLST39:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC10
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU202
	.uleb128 .LVU205
.LLST40:
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL66-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC9
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU207
	.uleb128 .LVU210
.LLST41:
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2611
	.sleb128 0
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST16:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LFE54-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU130
	.uleb128 .LVU140
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU147
.LLST18:
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x7
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0xc
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x7
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x5
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0xa
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -81
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0
.LVUS26:
	.uleb128 .LVU114
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU138
	.uleb128 .LVU147
.LLST26:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS20:
	.uleb128 .LVU107
	.uleb128 .LVU110
.LLST20:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU135
	.uleb128 .LVU138
.LLST22:
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU125
	.uleb128 .LVU128
.LLST24:
	.byte	0x4
	.uleb128 .LVL45-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2619
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-1-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL20-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL33-1-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL10-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL23-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL36-1-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL2-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.Ltext0
	.uleb128 .LVL3-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL9-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU36
	.uleb128 .LVU42
.LLST6:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 .LVU12
	.uleb128 .LVU19
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL8-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE53-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU58
	.uleb128 .LVU64
.LLST10:
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU68
	.uleb128 .LVU74
.LLST12:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU80
	.uleb128 .LVU86
.LLST14:
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU90
	.uleb128 .LVU94
.LLST15:
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2654
	.sleb128 0
	.byte	0
.LVUS42:
	.uleb128 .LVU216
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 0
.LLST42:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS43:
	.uleb128 .LVU222
	.uleb128 .LVU225
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU232
	.uleb128 .LVU239
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-1-.Ltext0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LFE52-.Ltext0
	.uleb128 0x7
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0
.LVUS45:
	.uleb128 .LVU250
	.uleb128 .LVU253
.LLST45:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+2678
	.sleb128 0
	.byte	0
.Ldebug_loc3:
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL3:
	.byte	0x4
	.uleb128 .LBB45-.Ltext0
	.uleb128 .LBE45-.Ltext0
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0x4
	.uleb128 .LBB69-.Ltext0
	.uleb128 .LBE69-.Ltext0
	.byte	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB46-.Ltext0
	.uleb128 .LBE46-.Ltext0
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0
.LLRL7:
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0x4
	.uleb128 .LBB68-.Ltext0
	.uleb128 .LBE68-.Ltext0
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0
.LLRL9:
	.byte	0x4
	.uleb128 .LBB51-.Ltext0
	.uleb128 .LBE51-.Ltext0
	.byte	0x4
	.uleb128 .LBB54-.Ltext0
	.uleb128 .LBE54-.Ltext0
	.byte	0
.LLRL11:
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0
.LLRL13:
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0
.LLRL19:
	.byte	0x4
	.uleb128 .LBB71-.Ltext0
	.uleb128 .LBE71-.Ltext0
	.byte	0x4
	.uleb128 .LBB80-.Ltext0
	.uleb128 .LBE80-.Ltext0
	.byte	0
.LLRL21:
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0x4
	.uleb128 .LBB83-.Ltext0
	.uleb128 .LBE83-.Ltext0
	.byte	0
.LLRL23:
	.byte	0x4
	.uleb128 .LBB77-.Ltext0
	.uleb128 .LBE77-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0
.LLRL25:
	.byte	0x4
	.uleb128 .LBB81-.Ltext0
	.uleb128 .LBE81-.Ltext0
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0
.LLRL32:
	.byte	0x4
	.uleb128 .LBB93-.Ltext0
	.uleb128 .LBE93-.Ltext0
	.byte	0x4
	.uleb128 .LBB96-.Ltext0
	.uleb128 .LBE96-.Ltext0
	.byte	0
.LLRL35:
	.byte	0x4
	.uleb128 .LBB99-.Ltext0
	.uleb128 .LBE99-.Ltext0
	.byte	0x4
	.uleb128 .LBB102-.Ltext0
	.uleb128 .LBE102-.Ltext0
	.byte	0
.LLRL38:
	.byte	0x4
	.uleb128 .LBB105-.Ltext0
	.uleb128 .LBE105-.Ltext0
	.byte	0x4
	.uleb128 .LBB108-.Ltext0
	.uleb128 .LBE108-.Ltext0
	.byte	0
.LLRL44:
	.byte	0x4
	.uleb128 .LBB113-.Ltext0
	.uleb128 .LBE113-.Ltext0
	.byte	0x4
	.uleb128 .LBB116-.Ltext0
	.uleb128 .LBE116-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"__fmt"
.LASF29:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -O -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF13:
	.string	"exit"
.LASF21:
	.string	"value"
.LASF15:
	.string	"count"
.LASF30:
	.string	"myData"
.LASF17:
	.string	"inputValue_t"
.LASF18:
	.string	"check"
.LASF12:
	.string	"__printf_chk"
.LASF24:
	.string	"again"
.LASF31:
	.string	"__isoc99_scanf"
.LASF34:
	.string	"__builtin_puts"
.LASF19:
	.string	"scanf"
.LASF16:
	.string	"info_t"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"__stack_chk_fail"
.LASF20:
	.string	"info"
.LASF27:
	.string	"restart"
.LASF26:
	.string	"main"
.LASF22:
	.string	"symbol"
.LASF4:
	.string	"unsigned char"
.LASF3:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF25:
	.string	"display"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF14:
	.string	"system"
.LASF28:
	.string	"printf"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF23:
	.string	"inputAgain"
.LASF6:
	.string	"signed char"
.LASF33:
	.string	"puts"
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
