.data
	message: .asciiz "The numbers are equal"
	message3: .asciiz "The numbers are different"
	message2: .asciiz "Nothing happened"

.text

	
	main:
	
		addi $t0, $zero, 20
		addi $t1, $zero, 21
		
		beq $t0, $t1, numbersequal
		bne $t0, $t1, numbersdsifferent
		
		#syscall to end program
		li $v0, 10
		syscall


	numbersequal:
		li $v0, 4
		la $a0, message
		syscall
		
	numbersdsifferent:
		li $v0, 4
		la $a0, message3
		syscall
