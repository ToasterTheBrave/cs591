	.file	"movl.c"
	.text
.globl get_sp
	.type	get_sp,@function
get_sp:
	pushl	%ebp
	movl	%esp, %ebp
#APP
	movl $0xb, %eax
#NO_APP
	leave
	ret
.Lfe1:
	.size	get_sp,.Lfe1-get_sp
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
