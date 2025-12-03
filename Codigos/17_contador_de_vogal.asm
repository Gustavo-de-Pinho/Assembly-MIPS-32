#Desafio: O Contador de 'A's Dado a string "ARARA", 
#conte quantas vezes a letra 'A' aparece.

.data
texto: .asciiz "ARARA"

.text
move $t0, $zero
move $s0, $zero

loop:
lb $t1, texto($t0)
beqz $t1, fim

sub $t1, $t1, 'A'
beqz $t1, somador

addi $t0, $t0, 1
j loop

somador:
addi $s0, $s0, 1
addi $t0, $t0, 1
j loop

fim:
li $v0, 1
move $a0, $s0
syscall

li $v0, 10
syscall
