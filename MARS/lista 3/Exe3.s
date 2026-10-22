#3. Crie um programa que lê o mês e o ano de nascimento de uma pessoa e o mês e ano atual.
#Calcule e mostre qual é: a idade da pessoa em meses.
.data
	msg1: .asciiz "\n Em que ano voce nasceu?: "
	msg2: .asciiz "\n Em que mes voce nasceu?: "
	msg3: .asciiz "\n Em que ano estamos?: "
	msg4: .asciiz "\n Em que mes estamos?: "
	msg5: .asciiz "\n Sua idade em meses e: "
.text
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0

li $v0, 4
la $a0, msg2
syscall 
li $v0, 5                 
syscall
add $t1, $v0, 0

li $v0, 4
la $a0, msg3
syscall 
li $v0, 5                 
syscall
add $t2, $v0, 0

li $v0, 4
la $a0, msg4
syscall 
li $v0, 5                 
syscall
add $t3, $v0, 0

#t0, t1 anonasci, mesnasci / t2,t3 ano atual, mes atual
#(ano atual - ano nascimento) x 12 + ( mes atual - mes nascimento)
sub $t4, $t2, $t0 
sub $t5, $t3, $t1
mul $t6, $t4, 12
add $t7, $t6, $t5

li $v0, 4
la $a0, msg5
syscall 
li $v0, 1
add $a0, $t7, 0
syscall