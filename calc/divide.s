    .text
.globl divide 
divide:
    pushl   %ebp
	movl    %esp, %ebp
    movl   	12(%ebp), %eax
    movl	8(%ebp), %ecx
	sarl 	$31, %edx
	idiv	%ecx    
	popl    %ebp
    ret 

