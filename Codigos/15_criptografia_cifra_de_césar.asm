#Seu objetivo é criar um programa que criptografa uma mensagem
#deslocando cada letra 1 posição à frente no alfabeto.
#'A' vira 'B'
#'B' vira 'C'
#'M' vira 'N'
#Dado:
#Entrada: A string "MIPS".
#Tarefa: Escrever o loop que lê a entrada, soma 1 ao código
#ASCII de cada caractere, e salva na saída.

.data
entrada: .asciiz "MIPS"      # Texto original
saida:   .space 5            # Buffer de saída
.text
move $t0, $zero #i = 0

loop:
lb $t1, entrada($t0) #load byte, carrega no t1 entrada [i]
beqz $t1, fim #Comparo se t1 é igual 0, pulo pro sim
#sempre que uma string chega no final, ela termina em zero

addi $t1, $t1, 1 #regra de negócio
#exercicio pedia logica de cesar, pular um carctere A ->B

sb $t1, saida($t0) #escrevo no [i] de saída esse novo t1
addi $t0, $t0, 1 #proximo caractere
j loop #retorna loop

fim:
li $v0, 10 #desliga sistema na unha
syscall