.data
Fahrenheit: .asciiz "O resultado da conversão de celcios para Fahrenheit é: "

.text
#entra com o numero float
li $v0, 6
syscall
mov.s $f1,$f0

li $t0, 18
mtc1 $t0, $f2
cvt.s.w $f2, $f2

li $t0, 10
mtc1 $t0, $f6
cvt.s.w $f6, $f6

div.s $f7, $f2, $f6

li $t0, 32
mtc1 $t0, $f3
cvt.s.w $f3, $f3

mul.s $f4,$f1,$f7

add.s $f5,$f4,$f3

li $v0, 4
la $a0, Fahrenheit
syscall

li $v0, 2
mov.s $f12, $f5
syscall

li $v0, 10
syscall


