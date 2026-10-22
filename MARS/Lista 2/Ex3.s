#3. Receba 2 valores inteiros. Calcule e mostre o resultado da diferença do maior pelo menor
#valor.

.data
	msg1: .asciiz "\n Digite um Num: "
	msg2: .asciiz "\n Digite outro Num: "
	msg3: .asciiz "\n A diferença é de: "
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

bgt $t0, $t1, m1
j m2

m1:
sub $t2, $t0, $t1
j fim

m2:
sub $t2, $t1, $t0
j fim

fim:
li $v0, 4
la $a0, msg3              
syscall

li $v0, 1
add $a0, $t2, 0 
syscall
