.data
	message:  .asciiz  "hello, "
	userinput: .space 20
.text
	main:
	
		#get user input as text
		li $v0, 8 # code for text input 
		la $a0, userinput
		li $a1, 20
		syscall
		
		#display hello
		li $v0, 4 #code display text
		la $a0, message
		syscall
		
		#display name
		li $v0, 4 #code display text
		la $a0, userinput
		syscall

	li $v0, 10
	syscall