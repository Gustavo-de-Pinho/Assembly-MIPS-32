.data
	#área para dados na memória principal
	idade: .word  67 #númeor a ser exibido

.text
	#área para comandos
	
	li $v0, 1 #instruçao para impressão número
	lw $a0, idade #indicar o endereço que está o int
	syscall #chamado para impressão