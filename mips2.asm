.data
	n1: .word 20
	
	n2: .word 8
	
	
.text
	lw $s0, n1
	lw $s1, n2
	
	sub $t0, $s0,$s1
	
	li $v0, 1
	#move $a0, $t0
	syscall