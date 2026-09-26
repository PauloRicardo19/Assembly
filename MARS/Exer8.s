#8.Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo,
#imprimindo o resultado.
.data
msg1: .asciiz "\n Digite um numero: " 
msg2: .asciiz "\n O dobro desse numero e: "
msg3: .asciiz "\n O triplo desse numero e: "

.text
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0

blt $t0, 0, negativo 
j positivo

negativo: 
mul $t1, $t0, 3
li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t1, 0
syscall
j fim

positivo:
mul $t1, $t0, 2
li $v0, 4
la $a0, msg2
syscall 
li $v0, 1
add $a0, $t1, 0
syscall

fim: