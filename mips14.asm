.data
	prompt: .asciiz "Enter the value of e:"

.text
	#display prompt
	li $v0, 4
	la $a0,  prompt
	syscall
	
	#get double from user
	li $v0, 7 #code to get double, stores in f0
	syscall
	
	#display  user input
	li $v0, 3 #display a double
	add.d $f12, $f0, $f10
	syscall