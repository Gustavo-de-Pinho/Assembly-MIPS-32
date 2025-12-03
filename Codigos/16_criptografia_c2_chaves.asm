#Escrever o código na seção .text que leia a string entrada, converta cada 
#dígito na letra correspondente da tabela e salve o resultado em saida.
#Dados do Problema:
#Tabela: "PERNAMBUCO" (Onde '0' vira P, '1' vira E, '2' vira R...).
#Entrada: "04632"

.data
tabela: .asciiz "PERNAMBUCO"
entrada: .asciiz "04632"
saida: .space 10

.text
move $t0, $zero #i = 0

loop:
lb $t1, entrada($t0) #atribuindo a t1 o [i] da entrada
beqz $t1, fim #Comparo se t1 é igual 0, pulo pro sim
#sempre que uma string chega no final, ela termina em zero

sub $t1, $t1, '0' #subtrai de t1 48 ja que esta em ascII
lb $t1, tabela($t1) #buscamos na tabela o resultado de T1

sb $t1, saida($t0) #escrevemos na saida na posição t0 o t1
addi $t0, $t0, 1 #soma 1 em t0 que é o i
j loop #volta no loop

fim:
li $v0, 10 #desliga sistema na unha
syscall