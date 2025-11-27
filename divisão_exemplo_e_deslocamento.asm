.text
	li $t0, 31 #carregando em t0 o valor 31
	li $t1, 8 #carregando em t1 o valor 8
	
	srl $t2, $t1, 2 #deslocando t1 para direita em 2 (dividindo por 2^2), e salvando em t2
	
	div $t0, $t2 #dividindo 31 por 2
	mflo $s0 #salvamos o quociente em s0
	mfhi $s1 #salvamos o resto em s1
	
	li $v0, 1 #função para ler int
	move $a0, $s0 #movendo o valor de s0 para a0
	syscall #chamando sistema