	.file	"example3a.c"
	.text
.globl function
	.type	function,@function
function:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	leal	-24(%ebp), %eax
	addl	$15, %eax
	movl	%eax, -44(%ebp)
	movl	-44(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	addl	$8, %eax
	movl	%eax, (%edx)
	leave
	ret
.Lfe1:
	.size	function,.Lfe1-function
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	andl	$-16, %esp
	movl	$0, %eax
	subl	%eax, %esp
	movl	$0, -4(%ebp)
	subl	$4, %esp
	pushl	$3
	pushl	$2
	pushl	$1
	call	function
	addl	$16, %esp
	movl	$1, -4(%ebp)
	subl	$8, %esp
	pushl	-4(%ebp)
	pushl	$.LC0
	call	printf
	addl	$16, %esp
	leave
	ret
.Lfe2:
	.size	main,.Lfe2-main
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
