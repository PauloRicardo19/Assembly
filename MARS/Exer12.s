#12.Desenvolver um algoritmo que leia a altura, em centímetros de 15 pessoas. Este programa deverá
#calcular e mostrar:
#a. A menor altura do grupo;
#b. A maior altura do grupo;

.data
msg1: .asciiz "\nInsira a altura em CENTIMETROS: "
msg2: .asciiz "\nO maior possui: "
msg3: .asciiz "\nO menor possui: "

.text
li $t0, 0              
li $t2, 0              
li $t3, 0              

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall

add $t1, $v0, 0       


beq $t0, 0, primeira


blt $t1, $t2, menor


bgt $t1, $t3, maior

j continua

primeira:
add $t2, $t1, 0       
add $t3, $t1, 0        
j continua

menor:
add $t2, $t1, 0        
j continua

maior:
add $t3, $t1, 0        

continua:
add $t0, $t0, 1
beq $t0, 15, segue
j main

segue:


li $v0, 4
la $a0, msg2
syscall

li $v0, 1
add $a0, $t3, 0
syscall


li $v0, 4
la $a0, msg3
syscall

li $v0, 1
add $a0, $t2, 0
syscall

li $v0, 10
syscall