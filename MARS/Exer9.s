#9.Fazer um algoritmo que leia 2 números inteiros e exiba a divisão destes. Sabe-se que o 2o número
#não pode ser zero, portanto, deve-se insistir na solicitação do 2o número até ele ser diferente de 0
.data
msg1: .asciiz "\n Digite um numero: "
msg2: .asciiz "\n Digite outro numero: "
msg3: .asciiz "\n A divisao deles e: "

.text
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0

seg: 
li $v0, 4
la $a0, msg2
syscall 
li $v0, 5                 
syscall
add $t1, $v0, 0
bne $t1, 0, segue
j seg

segue:
div $t2, $t0, $t1
li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t2, 0
syscall