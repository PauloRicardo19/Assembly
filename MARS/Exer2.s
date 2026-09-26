#2.Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo vendida
#respectivamente por 10, 12 e 15 reais. Construa um algoritmo em que o usuário forneça a
#quantidade de camisetas pequenas, médias e grandes referentes a uma venda, e a máquina informe
#quanto será o valor arrecadado.

.data
msg1: .asciiz "\n Quantas camisas Pequenas?: "
msg2: .asciiz "\n Quantas camisas Médias?: "
msg3: .asciiz "\n Quantas camisas Grandes?: "
msg4: .asciiz "\n O valor total vai ser de: "

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

mul $t3,$t0, 10
mul $t4, $t1, 12
mul $t5, $t2, 15

add $t6, $t3, $t4
add $t7, $t6, $t5

li $v0, 4
la $a0, msg4
syscall 
li $v0, 1
add $a0, $t7, 0
syscall


