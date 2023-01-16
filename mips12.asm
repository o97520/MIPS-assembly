.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "Your age is: "

.text
	#prompt the user
	li $v0, 4
	la $a0, prompt
	syscall
	
	#get age
	li $v0, 5
	syscall
	
	#store in $t0
	move $t0, $v0
	
	#display 
	li $v0, 4
	la $a0, message
	syscall
	
	#print age
	li $v0, 1
	add $a0, $zero, $t0
	syscall