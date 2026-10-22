#7.Ler um número inteiro e imprimir a saída da seguinte forma:
#CENTENA = x
#DEZENA = y
#UNIDADE = z
#*Sabe-se que a entrada deve ser um número entre 100 e 999, validar a entrada para que não
#permita números fora deste intervalo
.data
	msg1: .asciiz "\n Digite um numero: "
	msg2: .asciiz "\n Numero precisa estar entre 100 e 999."
	msg3: .asciiz "\n CENTENA = "
	msg4: .asciiz "\n DEZENA = "
	msg5: .asciiz "\n UNIDADE = "
.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5                 
syscall
add $t0, $v0, 0
bge $t0, 100, seg
j erro

seg: 
ble $t0, 999, segue

erro:
li $v0, 4
la $a0, msg2
syscall
j fim

segue:
#t0 ta com o numero
div $t1, $t0, 100 #centena
div $t2, $t0, 10
rem $t2, $t2, 10 #dezena 
rem $t3, $t0, 10 #unidade

li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t1, 0
syscall

li $v0, 4
la $a0, msg4
syscall 
li $v0, 1
add $a0, $t2, 0
syscall

li $v0, 4
la $a0, msg5
syscall 
li $v0, 1
add $a0, $t3, 0
syscall
fim: