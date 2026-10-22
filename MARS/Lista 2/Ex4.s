#4. Receba 4 notas bimestrais de um aluno. Calcule e mostre a média aritmética. Mostre a
#mensagem de acordo com a média:

#a. Se a média for >= 6,0 exibir “APROVADO”;
#b. Se a média for >= 3,0 ou < 6,0 exibir “EXAME”;
#c. Se a média for < 3,0 exibir “RETIDO”.

.data
	msg1: .asciiz "\n Digite 1o a nota: "
	msg2: .asciiz "\n Digite 2o a nota: "
	msg3: .asciiz "\n Digite 3o a nota: "
	msg4: .asciiz "\n Digite 4o a nota: "
	msg5: .asciiz "\n APROVADO: "
	msg6: .asciiz "\n EXAME: "
	msg7: .asciiz "\n RETIDO: "

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

#notas em t0, t1, t2, t3

add $t4, $t0, $t1
add $t5, $t2, $t3
add $t6, $t4, $t5
div $t7, $t6, 4

bge $t7, 6, Ap
blt $t7, 6, exame
exame:
bge $t7, 3, Bp
j Cp


Ap:
li $v0, 4
la $a0, msg5              
syscall

li $v0, 1
add $a0, $t7, 0 
syscall
j final 

Bp:
li $v0, 4
la $a0, msg6              
syscall

li $v0, 1
add $a0, $t7, 0 
syscall
j final

Cp:
li $v0, 4
la $a0, msg7              
syscall

li $v0, 1
add $a0, $t7, 0 
syscall

final: