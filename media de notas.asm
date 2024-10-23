.data
resultado: .asciiz "O resultado da média é: "   # Define a string na seção .data
frequencia: .asciiz "A frequencia do aluno é de: "
novaLinha: .asciiz "\n"
.text

#leitura do primeiro float
li $v0,6
syscall
mov.s $f4, $f0

#leitura do segundo float
li $v0,6
syscall
mov.s $f6, $f0

#leitura da frequencia
li $v0,6
syscall
mov.s $f1, $f0

add.s $f8, $f4, $f6


li $t0, 2
mtc1 $t0, $f2
cvt.s.w $f2, $f2

div.s $f10,$f8,$f2

li $v0, 4
la $a0, resultado
syscall

li $v0, 2
mov.s $f12,$f10
syscall

#usei para imprimir a nova linha
li $v0,4
la $a0, novaLinha
syscall

li $v0, 4
la $a0, frequencia
syscall

li $v0, 2
mov.s $f12, $f1
syscall

li $v0,10
syscall