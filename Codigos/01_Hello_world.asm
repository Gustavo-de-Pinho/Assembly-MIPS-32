.data
	#área para dados na memória principal
	msg: .asciiz "Olá, mundo!" #mensagem a ser exibida

.text
	#área para comandos
	
	li $v0, 4 #instruçao para impressão string
	la $a0, msg #indicar o endereço que está a mensagem
	syscall #chamado para impressão