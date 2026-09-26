#6.Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se somar
#os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se atribuir o
#resultado para uma variável C e mostrar seu conteúdo na tela.
.data
msg1: .asciiz "\n Digite o valor de A: "
msg2: .asciiz "\n Digite o valor de B: "
msg3: .asciiz "\n C equivale a: "

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


Soma:
beq $t0, $t1, Fim_Soma
j mult

Fim_Soma:
add $t2, $t0, $t1
j fim

mult:
mul $t2, $t0, $t1

fim:
li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t2, 0
syscall
