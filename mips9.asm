.data

	message: .ascii "HI\n \n wdad\n"


.text
	main:
		
		
		
		
		jal disp
		
		
		addi $s0, $zero, 4
		
		li $v0,1
		add $a0, $zero, $s0
		syscall
		
	li $v0, 10
	syscall
	
	
	
	
	
	
	
	disp:
		li $v0,4
		la $a0, message
		syscall
		
		jr $ra

	