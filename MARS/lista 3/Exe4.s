#4.O proprietário da empresa ABC LTDA precisa de um programa de computador para calcular o
#novo salário que seus funcionários irão receber a partir do mês que vem. Sabendo que o
#aumento de salário para todos os funcionários será de 25%, faça um programa que lê o valor do
#salário atual do funcionário e informa o seu novo salário acrescido de 25% (Por se tratar de
#apenas número inteiros, para calcular 25% deve-se multiplicar o valor por 25 e dividir por 100).
.data
	msg1: .asciiz "\n Qual o valor do salario atual?: "
	msg2: .asciiz "\n O seu novo salario e: "
.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5                 
syscall
add $t0, $v0, 0

#t0 valor salario
mul $t1, $t0, 25 #x25
div $t2, $t1, 100 #/100
add $t3, $t0, $t2

li $v0, 4
la $a0, msg2
syscall 
li $v0, 1
add $a0, $t3, 0
syscall