#2. Receba o raio de uma circunferência. Calcule e mostre o comprimento da circunferência.
#Considere PI = 3.

.data
	msg1: .asciiz "\n Qual o valor dp raio? "
	msg2: .asciiz "\n comprimento da circunferência = "
.text

main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5                 
syscall 

add $t0, $v0, 0

#c = 2 . 3 . r

mul $t1, $t0, 3
mul $t2, $t1, 2

li $v0, 4
la $a0, msg2              
syscall

li $v0, 1
add $a0, $t2, 0 
syscall
