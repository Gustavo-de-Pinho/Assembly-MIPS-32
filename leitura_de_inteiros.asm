.data
	entrada: .asciiz "Olá. por favor, forneça sua idade: "
	saida: .asciiz "Sua idade é "
	
.text
	li $v0, 4 #imprimir uma string
	la $a0, entrada
	syscall
	
	li $v0, 5 #leitura de inteiro
	syscall
	#após usuário inserir o número, v0 assume aquele número
	
	move $s0, $v0 #salvando o valor de v0
	
	li $v0, 4 #imprimir uma string
	la $a0, saida
	syscall
	
	li $v0, 1 #imprimindo ao lado a idade que foi salva em s0
	move $a0, $s0
	syscall
	