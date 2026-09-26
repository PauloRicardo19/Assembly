#10. No Assembly MIPS, existe a operação REM que apresenta o resto da divisão de 2 valores inteiros.
#SEM UTILIZAR A OPERAÇÃO REM, faça um algoritmo usando DIV, MUL e SUB que receba 2 valores
#inteiros e exiba o resto da divisão do maior pelo menor (Condição que deve ser verificada no início
#do algoritmo.
.data
msg1: .asciiz "\n Digite um numero: "
msg2: .asciiz "\n Digite outro valor: "
msg3: .asciiz "\n Resto = "

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
#t0, t1
#resto = dividendo ? (quociente × divisor)

bgt $t0, $t1, segue
j maior_t1


segue:
div $t2, $t0, $t1
mul $t3, $t2, $t1 
sub $t4, $t0, $t3

li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t4, 0
syscall
j fim

maior_t1:

div $t2, $t1, $t0
mul $t3, $t2, $t0
sub $t4, $t1, $t3

li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t4, 0
syscall

fim:

