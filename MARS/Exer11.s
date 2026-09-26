#11.Escrever um algoritmo que leia uma quantidade desconhecida de números e conte quantos deles
#estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados deve terminar
#quando for lido um número negativo.
#*Sabe-se que a entrada deve ser um número entre 0 e 100, validar a entrada para que não permita
#números fora deste intervalo

.data
msg1: .asciiz "\n Digite um numero: " 
msg2: .asciiz "\n entre 0 e 25: "
msg3: .asciiz "\n entre 26 e 50: "
msg4: .asciiz "\n entre 51 e 75: "
msg5: .asciiz "\n entre 76 e 100: "
.text
Main: 
li $t1, 0
li $t2, 0
li $t3, 0
li $t4, 0
main:
li $v0, 4
la $a0, msg1
syscall 
li $v0, 5                 
syscall
add $t0, $v0, 0
blt $t0, 0, final

ble $t0, 25, zero_vintecinco
j vinteseis_cinquentao
zero_vintecinco:
add $t1, $t1, 1
j main

vinteseis_cinquentao:
ble $t0, 50, vinteseis_cinquenta
j cinquentaeum_setentaecincoo
vinteseis_cinquenta:
add $t2, $t2, 1
j main

cinquentaeum_setentaecincoo:
ble $t0, 75, cinquentaeum_setentaecinco
j setentaeseis_cemo
cinquentaeum_setentaecinco:
add $t3, $t3, 1
j main

setentaeseis_cemo:
ble $t0, 100, setentaeseis_cem
j main
setentaeseis_cem:
add $t4, $t4, 1
j main

final:
li $v0, 4
la $a0, msg2
syscall 
li $v0, 1
add $a0, $t1, 0
syscall

li $v0, 4
la $a0, msg3
syscall 
li $v0, 1
add $a0, $t2, 0
syscall

li $v0, 4
la $a0, msg4
syscall 
li $v0, 1
add $a0, $t3, 0
syscall

li $v0, 4
la $a0, msg5
syscall 
li $v0, 1
add $a0, $t4, 0
syscall

