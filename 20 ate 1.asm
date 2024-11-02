.data
newline: .asciiz "\n"    

.text
.globl main

main:
    li $t0, 20           
loop:
    
    andi $t1, $t0, 1     
    bne $t1, $zero, skip 

    
    move $a0, $t0        
    li $v0, 1
    syscall


    li $v0, 4            
    la $a0, newline      
    syscall

skip:
    subi $t0, $t0, 1     
    bgtz $t0, loop       

    
    li $v0, 10           
    syscall
