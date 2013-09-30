    .text
.globl sub 
sub:
    pushl   %ebp
	movl    %esp, %ebp
    movl   	12(%ebp), %eax
    movl	8(%ebp), %edx
	sub		%edx, %eax    
	popl    %ebp
    ret 

