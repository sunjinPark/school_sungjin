    .text
.globl mul 
mul:
    pushl   %ebp
	movl    %esp, %ebp
    movl   	12(%ebp), %eax
    movl	8(%ebp), %edx
	imul	%edx, %eax    
	popl    %ebp
    ret 

