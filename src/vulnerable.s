	.file	"vulnerable.c"
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$520, %esp
	andl	$-16, %esp
	movl	$0, %eax
	subl	%eax, %esp
	cmpl	$1, 8(%ebp)
	jle	.L1
	subl	$8, %esp
	movl	12(%ebp), %eax
	addl	$4, %eax
	pushl	(%eax)
	leal	-520(%ebp), %eax
	pushl	%eax
	call	strcpy
	addl	$16, %esp
.L1:
	leave
	ret
.Lfe1:
	.size	main,.Lfe1-main
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
