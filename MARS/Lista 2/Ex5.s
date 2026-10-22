#5. Receba 2 números inteiros, verifique qual o maior entre eles. Calcule e mostre o resultado da
#somatória dos números ímpares entre esses valores

.data
	msg1: .asciiz "\n Digite o 1o Num: "
	msg2: .asciiz "\n Digite o 2o Num: "
	msg3: .asciiz "\n Somtoria dos impares: "
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

bge $t0, $t1, primeiro
j segundo
primeiro:
add $t2, $t0, 0 #maior
add $t3, $t1, 0 #menor
j calc
segundo:
add $t2, $t1, 0 #maior
add $t3, $t0, 0 #menor

calc: 
add $t4, $t3, 0 
li $t5, 0

loop:
bgt $t4, $t2, fim
rem $t6, $t4, 2
bne $t6, 1, proximo

add $t5, $t4, $t5

proximo:
addi $t4, $t4, 1
j loop

fim:
li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t5, 0
syscall