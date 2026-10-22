#8.Escreva um algoritmo que leia (em números inteiros) o valor da compra de um produto da Loja
#Vende Tudo. A loja só vende produtos de valor entre R$1000.00 e R$9999.99 (Que deve ser
#validado na entrada). A loja permite pagar o valor em parcelas fixas. O algoritmo deve ler
#também o valor da parcela a ser paga, que deve ser um valor entre R$100.00 e R$500.00 (Que
#deve ser validado na entrada). O algoritmo, sabendo que a última parcela pode ser de valor
#inferior às anteriores, deve calcular quantas parcelas serão pagas.

.data
	msg1: .asciiz "\n Digite o valor da COMPRA do produto: "
	msg2: .asciiz "\n Digite o valor da PARCELA do produto: "
	msg3: .asciiz "\n As parcelas a se pagar serao: "
	msg4: .asciiz "\n Valores invalidos."
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

#t0 valor COMPRA, t1 valor PARCELAS
bge $t0, 1000, seg
j fim
seg:
ble $t0, 9999, parce
j fim

parce:
bge $t1, 100, segu
j fim
segu:
ble $t1, 500, segue
j fim

segue:
add $t2, $t0, $t1
sub $t3, $t2, 1
div $t4, $t3, $t1
j final

fim:
li $v0, 4
la $a0, msg4
syscall
j finale

final:
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
add $a0, $t4, 0
syscall

finale: