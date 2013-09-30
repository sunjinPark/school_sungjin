    .text
.globl fibo 
fibo:
    pushl   %ebp
	movl    %esp, %ebp
    movl	8(%ebp), %ecx

	movl	$1, %eax
	movl 	$1, %edx
	
	cmpl	$2, %ecx
	je		finish
	cmpl	$1, %ecx
	je		finish
	jl		error

perform:
	pushl	%eax
	add		%edx, %eax
	popl	%edx
	decl	%ecx
	cmpl	$2, %ecx
	jne		perform
	
finish:
	popl 	%ebp
	ret

error:
	movl	$-99, %eax
	jmp		finish

