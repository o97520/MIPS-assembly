.data



.text

	addi $t0, $zero, 30
	addi $t1, $zero, 4
	
	div $t0, $t1
	
	mflo $a0 #quotient
	mfhi $a0 #remainder
	
	li $v0, 1

	syscall