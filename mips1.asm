.data
	number1: .word 3
	number2: .word 42

.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	add $t2, $t0, $t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall