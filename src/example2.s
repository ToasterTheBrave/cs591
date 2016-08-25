	.file	"example2.c"
	.text
.globl function
	.type	function,@function
function:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	subl	$8, %esp
	pushl	8(%ebp)
	leal	-24(%ebp), %eax
	pushl	%eax
	call	strcpy
	addl	$16, %esp
	leave
	ret
.Lfe1:
	.size	function,.Lfe1-function
.globl main
	.type	main,@function
main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$280, %esp
	andl	$-16, %esp
	movl	$0, %eax
	subl	%eax, %esp
	movl	$0, -268(%ebp)
.L3:
	cmpl	$254, -268(%ebp)
	jle	.L6
	jmp	.L4
.L6:
	leal	-264(%ebp), %eax
	addl	-268(%ebp), %eax
	movb	$65, (%eax)
	leal	-268(%ebp), %eax
	incl	(%eax)
	jmp	.L3
.L4:
	subl	$12, %esp
	leal	-264(%ebp), %eax
	pushl	%eax
	call	function
	addl	$16, %esp
	leave
	ret
.Lfe2:
	.size	main,.Lfe2-main
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
