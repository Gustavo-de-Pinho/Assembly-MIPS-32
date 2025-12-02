.text
	li $t0, 4 #definindo o t0 como n° 4 através do load instant
	addi $t1, $zero, 6 #definindo t1 como n° 6 através do addi, 0 + 6
	
	mul $s0, $t0, $t1 #multiplicando t0 e t1, e registrando resultado em s0
	
	sll $s1, $s0, 3 #usando shift left em s0, o que é o mesmo que mutplicar por 8 (2 pot. 3)
	
	li $v0, 1 #definindo função para imprimir inteiro
	move $a0, $s1 #movendo valor de s1 para a0, registrador que será chamado pela função
	syscall #ativando função