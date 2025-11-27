.data
	entrada: .asciiz "qual seu nome? "
	saída: .asciiz "Prazer em te conhecer, "
	nome: .space 25 #definindo o tamanho da variável nome
	
.text
	li $v0, 4 #exibindo string
	la $a0, entrada
	syscall
	
	li $v0, 8 #comando para ler string
	la $a0, nome #salvando o endereço nome
	la $a1, 25 #numero de bytes lidos
	syscall
	
	li $v0, 4 #exibindo string
	la $a0, saída
	syscall
	
	li $v0, 4 #exibindo string
	la $a0, nome
	syscall