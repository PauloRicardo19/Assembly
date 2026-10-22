#6.Escreva um programa que pergunte dois números e indique se são iguais ou diferentes. Caso
#sejam diferentes, mostre o maior e o menor (nesta ordem).
.data
	msg1: .asciiz "\n Digite um numero: "
	msg2: .asciiz "\n Digite outro numero: "
	msg3: .asciiz "\n Iguais."
	msg4: .asciiz "\n Diferentes."
	msg5: .asciiz "\n Maior: "
	msg6: .asciiz "\n Menor: "
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

#t0 valor 1 / t1 valor 2 
beq $t0, $t1, iguais
j diferentes

iguais:
li $v0, 4
la $a0, msg3
syscall
j fim

diferentes:
li $v0, 4
la $a0, msg4
syscall

bgt $t0, $t1, maiorzero
j maiorum

maiorzero:
li $v0, 4
la $a0, msg5
syscall
li $v0, 1
add $a0, $t0, 0
syscall

li $v0, 4
la $a0, msg6
syscall
li $v0, 1
add $a0, $t1, 0
syscall
j fim

maiorum:
li $v0, 4
la $a0, msg5
syscall
li $v0, 1
add $a0, $t1, 0
syscall

li $v0, 4
la $a0, msg6
syscall
li $v0, 1
add $a0, $t0, 0
syscall

fim:
