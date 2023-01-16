.data
	message: .asciiz "enter value : "
	zeroasfloat : .float 0.0
.text

	lwc1 $f4, zeroasfloat
	#display
	li $v0, 4
	la $a0, message
	syscall
	
	#read user input
	li $v0, 6 #read float code, stores in f0
	syscall
	
	#display
	li $v0, 2 #display a float
	add.s $f12, $f0, $f4
	syscall