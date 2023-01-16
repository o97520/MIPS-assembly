.data

.text

	addi $s0, $zero, 200
	addi $s1, $zero, 50

	mul $t0, $s0, $s1

	#display the product	
	li $v0, 1
	add $a0, $zero, $t0
	syscall	





	#mul 3 registers
	#mult 2 registers
	#sll 