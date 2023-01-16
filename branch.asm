.data

	exit: .asciiz "exit"
	else: .asciiz "else"
.text

	main:
		add $s3, $zero, 1
		add $s4, $zero, 2
		add $s1, $zero, 1
		add $s2, $zero, 1
		bne $s3, $s4, Else
		add $s0, $s1, $s2
		j Exit
		
		li $v0, 10
		syscall
	Else:
		li $v0, 4
		la $a0, else
		syscall
		li $v0, 10
		syscall		
	Exit:
		li $v0, 4
		la $a0, exit
		syscall
		li $v0, 10
		syscall