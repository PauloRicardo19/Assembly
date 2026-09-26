#5.Faça um algoritmo que receba o valor dos catetos de um triângulo, calcule e mostre o valor da
#hipotenusa.
.data
msg1: .asciiz "\n Digite o primeiro cateto: "
msg2: .asciiz "\n Digite o segundo cateto: "
msg3: .asciiz "\n A hipotenusa tem o valor de: "

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

 
mul $t2, $t0, $t0
mul $t3, $t1, $t1
add $t4, $t2, $t3

li $t5, 0
enquanto:

add $t5, $t5, 1
mul $t6, $t5, $t5
beq $t6, $t4, fim_enquanto
j enquanto

fim_enquanto:
li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t6, 0
syscall

