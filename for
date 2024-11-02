    .data
msg: .asciiz "%d\n"

    .text
    .globl main

    li $t0, 0               
for_loop:
    ble $t0, 10, print_value 
    j end_for                

print_value:
    move $a0, $t0           
    li $v0, 1                
    syscall
    addi $t0, $t0, 1         
    j for_loop               

end_for:
    li $v0, 10              
    syscall
