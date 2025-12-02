.data
	#área para dados na memória principal
	caractere: .byte  'A' #mensagem a ser exibida

.text
	#área para comandos
	
	li $v0, 4 #instruçao para impressão string
	la $a0, caractere #indicar o endereço que está a mensagem
	syscall #chamado para impressão