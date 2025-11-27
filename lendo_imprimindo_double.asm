.data
	msg: .asciiz "Insira um número decimal: "
	zero: .double 0.0
	
.text
	li $v0, 4 #imprimindo string que pede para digitar
	la $a0, msg
	syscall
	
	li $v0, 7 #lendo número, double
	syscall #valor em f0
	
	ldc1 $f2, zero #observe que estou pegando uma variavel
	#da memória, e atribuindo a um registrador f
	add.d $f12, $f0, $f2 #fazendo o malabarismo para atribuir
	#um valor a f12, com o clássico método do zero
	
	li $v0, 3
	#f12 já setado, não preciso fazer nada aqui então
	syscall