#5.Escreva um programa que pergunte os coeficientes de uma equação de segundo grau (A, B e
#C) e:
#a) se DELTA for maior que zero: imprima “DUAS RAÍZES REAIS”;
#b) se DELTA for igual a zero: imprima apenas “UMA RAÍZ REAL”;
#c) se DELTA menor que zero: imprima a mensagem “NÃO EXISTEM RAÍZES REAIS”.
#(Não é necessário calcular as raízes caso existam).

.data
	msg1: .asciiz "\n Digite o valor de A: "
	msg2: .asciiz "\n Digite o valor de B: "
	msg3: .asciiz "\n Digite o valor de C: "
	msg4: .asciiz "\n DUAS RAÍZES REAIS"
	msg5: .asciiz "\n UMA RAÍZ REAL"
	msg6: .asciiz "\n NÃO EXISTEM RAÍZES REAIS"
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

#t0 = A, t1 = B, t2 = C    X = B2 - 4 . A x C
mul $t1, $t1, $t1 #B ao quadrado 
mul $t3, $t0, $t2 #A x C
mul $t4, $t3, 4 
sub $t5, $t1, $t4

bgtz $t5, MaiorQueZero
beq $t5, 0, IgualZero
blt $t5, 0, MenorQueZero
j fim

MaiorQueZero:
li $v0, 4
la $a0, msg4
syscall
j fim

IgualZero:
li $v0, 4
la $a0, msg5
syscall
j fim

MenorQueZero:
li $v0, 4
la $a0, msg6
syscall

fim:
