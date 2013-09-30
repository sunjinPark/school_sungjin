    .text
.globl factorial 
factorial:
    pushl   %ebp
	movl    %esp, %ebp
    movl	8(%ebp), %edx
	movl	$1, %eax
	cmpl	$1, %edx
	jl		error	

perform:
	imul	%edx, %eax
	decl	%edx
	cmpl	$1, %edx
	jg		perform
	
finish:
	popl 	%ebp
	ret

error:
	movl	$-99, %eax
	jmp		finish
