#1. A imobiliária Imóbilis vende apenas terrenos retangulares. Faça um algoritmo para ler as
#dimensões de um terreno e depois exibir a área do terreno.

.data
       msg1: .asciiz "\nInsira o valor da base: "
       msg2: .asciiz "\nInsira o valor da altura: "
       msg3: .asciiz "\n A area do terreno e de: "
.text
main:   
        li $v0, 4
        la $a0, msg1               
        syscall
        
        li $v0, 5                 
        syscall
        
        add $t1, $v0, 0           
        
        li $v0, 4
        la $a0, msg2               
        syscall
        
        li $v0, 5                  
        syscall
        
        add $t2, $v0, 0   
        
        mul $t0, $t1, $t2
        
        li $v0, 4
        la $a0, msg3               
        syscall
        
        li $v0, 1
        add $a0, $t0, 0 
        syscall
        
        
