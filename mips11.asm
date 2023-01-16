.data
	newline: .asciiz  "\n"
.text


	main:
		addi $s0, $zero, 10

		#call function
		jal increaseregister
				
		#print line
		li $v0, 4
		la $a0, newline	
		syscall

		jal print



	li $v0, 10
	syscall
	
	
	increaseregister:
		
		#store register value in stack
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		
		#use register calculate
		addi $s0, $s0, 30
		
		
		#store register value in stack
		sw $ra, 4($sp)
		#nested procedure	
		jal print
						
		#restore register value from stack
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 8
		
		jr $ra
		

	print:			
		#print value
		li $v0, 1
		move $a0, $s0
		syscall
		
		jr $ra