.data





.text

	main:
	
		addi $a1, $zero, 50
		addi $a2, $zero, 100
		
		jal addnumbers
	
		li $v0, 1
		add $a0, $zero, $v1
		syscall
	
	li $v0,10
	syscall
	
	
	addnumbers:
		
		add $v1, $a1, $a2
		
		
		jr $ra
