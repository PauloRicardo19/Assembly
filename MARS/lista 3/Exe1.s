#1.Elaborar um programa que apresente o valor da conversão em real (R$) de um valor lido em
#dólar (US$). O programa deve considerar a cotação do dólar em R$5 (Usar apenas números
#inteiros).
# Valor em Reais = Valor em Dólares × Cotação do Dólar
.data
	msg1: .asciiz "\n Quantos Dolares?: "
	msg2: .asciiz "\n R$: "
.text
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0

mul $t1, $t0, 5

li $v0, 4
la $a0, msg2
syscall 
li $v0, 1
add $a0, $t1, 0
syscall