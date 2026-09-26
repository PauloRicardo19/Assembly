#7.Faça um algoritmo que leia uma variável e some 5, caso seja par ou some 8, caso seja ímpar,
#imprimir o resultado desta operação.
.data
msg1: .asciiz "\n Digite um numero: "
msg2: .asciiz "\n O resultado e: " 

.text
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0


rem $t1, $t0 , 2
beq $t1, 0 sim
j nao
sim: 
add $t2, $t0, 5
j fim

nao:
add $t2, $t0, 8
j fim

fim:
li $v0, 4
la $a0, msg2
syscall 
li $v0, 1
add $a0, $t2, 0
syscall