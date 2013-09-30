    .text
.globl addition
addition:
    pushl   %ebp
	movl    %esp, %ebp
    movl   	12(%ebp), %eax
    movl	8(%ebp), %edx
	add		%edx, %eax    
	popl    %ebp
    ret 

