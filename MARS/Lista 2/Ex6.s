# 6. Receba 10 numeros inteiros.
# Mostre o maior e o menor valor.
# Numeros negativos devem ser digitados novamente.

.data
    numeros: .space 40
    msg1: .asciiz "\nDigite um numero: "
    msg2: .asciiz "\nNumero invalido. Tente novamente."
    msg3: .asciiz "\nMaior valor: "
    msg4: .asciiz "\nMenor valor: "

.text
main:
    li $s0, 0
    la $t0, numeros

loop:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall

    blt $v0, 0, negativo

    sw $v0, 0($t0)

    beq $s0, 0, primeiro
    j comparar

primeiro:
    move $s1, $v0
    move $s2, $v0
    j proximo

comparar:
    blt $v0, $s1, novo_menor
    bgt $v0, $s2, novo_maior
    j proximo

novo_menor:
    move $s1, $v0
    bgt $v0, $s2, novo_maior
    j proximo

novo_maior:
    move $s2, $v0
    j proximo

proximo:
    addi $t0, $t0, 4
    addi $s0, $s0, 1
    blt $s0, 10, loop
    j fim

negativo:
    li $v0, 4
    la $a0, msg2
    syscall
    j loop

fim:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $s2
    syscall

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 10
    syscall