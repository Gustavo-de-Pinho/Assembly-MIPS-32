.text
	li $t0, 100 #atribuo valor para t0, por meio do load immediate
	addi $t1, $zero, -50 #atribuo valor por meio do add immediate, mas botando o zero 
	
	add $s0, $t0, $t1 #somo t0 e t1
	
	sub $s1, $s0, $t1 #Olha só que interessante, agora como estamos subtraindo, menos com menos dá mais
	
	li $v0, 1 #chamando função para imprimir inteiro
	move $a0, $s1 #transferindo de registrador s para registrado a que é argumento da função
	syscall
	
	
	