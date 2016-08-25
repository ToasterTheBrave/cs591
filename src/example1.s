	.file	"example1.c"
	.text
.globl function
	.type	function,@function
function:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	leave
	ret
.Lfe1:
	.size	function,.Lfe1-function
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	andl	$-16, %esp
	movl	$0, %eax
	subl	%eax, %esp
	subl	$4, %esp
	pushl	$3
	pushl	$2
	pushl	$1
	call	function
	addl	$16, %esp
	leave
	ret
.Lfe2:
	.size	main,.Lfe2-main
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
