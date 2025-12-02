.data
	mensagem: .asciiz "---Mutiplizando por PI--- "
	comando: .asciiz "Digite seu número: "
	quebra: .asciiz "\n"
	float: .float 3.1415
	final: .asciiz "O resultado da mutiplicação foi: "
	zero: .float 0.0 #defini 0 aqui pelo seguinte:
	#Quando precisamos passa o valor de um registrador de c1 para outro
	#Não temos o move, então usamos o add.s, e botamos o zero ;) porque 
	#em coproc1 não existe 0
	
.text
	li $v0, 4 #imprimindo mensagem inicial
	la $a0, mensagem
	syscall
	
	li $v0, 4 #imprimindo quebra de linha
	la $a0, quebra
	syscall
	
	li $v0, 4 #imprimindo string que pede para digitar
	la $a0, comando
	syscall
	
	li $v0, 6 #lendo float
	syscall #fica salvc em f0
	
	lwc1 $f2, float #atribuo a variavel pi da memori apara o registrador f2
	
	mul.s $f12, $f0, $f2 #mutiplico os termos e registrando no f12
	
	li $v0, 4 #imprimindo mensagem final
	la $a0, final
	syscall
	
	li $v0, 2 #imprimindo float
	#seria necessário aqui transferir o falor para f12 com um lwc1, mas
	#como na multiplicação já registramos o valor em f12, nem precisa
	syscall