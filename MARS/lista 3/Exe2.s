#2.Ler dois valores para 2 registradores e efetuar a troca dos valores de forma que o valor do
#primeiro registrador passe ao segundo e o segundo passe ao primeiro. Apresentar os valores
#após a efetivação do processamento da troca.

.data
	msg1: .asciiz "\n Digite o primeiro valor: "
	msg2: .asciiz "\n Digite o segundo valor: "
	msg3: .asciiz "\n O primeiro valor é: "
	msg4: .asciiz "\n O segundo valor é: "
	msg5: .asciiz "\n Trocando temos 1o: "
	msg6: .asciiz "\n Trocando temos 2o: "
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
li $v0, 1
add $a0, $t0, 0
syscall

li $v0, 4
la $a0, msg4
syscall 
li $v0, 1
add $a0, $t1, 0
syscall

#t0 1 valor, t1 2 valor 

add $t2, $t0, 0 #t2 1 valor
add $t3, $t1, 0 #t3 2 valor

add $t0, $t3, 0 #t0 2 valor
add $t1, $t2, 0 #t1 1 valor 

li $v0, 4
la $a0, msg5
syscall 
li $v0, 1
add $a0, $t0, 0
syscall

li $v0, 4
la $a0, msg6
syscall 
li $v0, 1
add $a0, $t1, 0
syscall

