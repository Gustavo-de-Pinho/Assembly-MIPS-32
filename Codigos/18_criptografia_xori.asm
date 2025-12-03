#Você precisa proteger a senha do servidor. Sua missão é criptografar a 
#string aplicando uma máscara de bits (chave) em cada caractere.
#Dados da Missão:
#Mensagem: "GATO"
#Chave Secreta: O valor hexadecimal 0x15 (que em binário é 00010101).

.data
entrada: .asciiz "GATO"
saida:   .space 5

.text
move $t0, $zero #i = 0

loop:
lb $t1, entrada($t0) #atribuindo a t1 o [i] da entrada
beqz $t1, fim #Comparo se t1 é igual 0, pulo pro sim
#sempre que uma string chega no final, ela termina em zero

xori $t1, $t1, 0x15 #mutiplicamos o string por uma hexa

sb $t1, saida($t0) #escrevemos na saida na posição t0 o t1
addi $t0, $t0, 1 #soma 1 em t0 que é o i
j loop

fim:
li $v0, 10 #desliga sistema na unha
syscall