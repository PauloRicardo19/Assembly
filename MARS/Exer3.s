#3.A empresa Hipotheticus paga R$10,00 por hora normal trabalhada, e R$15,00 por hora extra. Faça
#um algoritmo para calcular e imprimir o salário bruto e o salário líquido de um determinado
#funcionário. Considere, também, uma entrada de desconto para calcular o salário líquido.
.data
msg1: .asciiz "\nQuantas horas normais o Foram trabalhadas?: "
msg2: .asciiz "\nQuantas horas extras foram trabalhadas?: "
msg3: .asciiz "\nQual o valor do desconto?: "
msg4: .asciiz "\nSalario bruto = "
msg5: .asciiz "\nSalario liquido = "
#normal × 10 + extra × 15 = bruto
#bruto ? desconto = líquido

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

#t0, t1, t2
mul $t3, $t0, 10
mul $t4, $t1, 15
add $t5, $t3, $t4
li $v0, 4
la $a0, msg4
syscall 
li $v0, 1
add $a0, $t5, 0
syscall

sub $t6, $t5, $t2
li $v0, 4
la $a0, msg5
syscall 
li $v0, 1
add $a0, $t6, 0
syscall

