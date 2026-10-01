.data 
fizz: .asciiz "Fizz\n"
buzz: .asciiz "Buzz\n"
fizzbuzz: .asciiz "FizzBuzz\n"
.text
.globl main

main:
li $t1, 1
li $t9, 3
li $t8, 5
li $t7, 15

loop:
bgt $t1, 100, done

rem $t0, $t1, $t7
beq $t0, $zero, print_fizzbuzz

rem $t0, $t1, $t9
beq $t0, $zero, print_fizz

rem $t0, $t1, $t8
beq $t0, $zero, print_buzz

li $v0, 1
move $a0, $t1
syscall
j next_number

print_fizzbuzz:
li $v0, 4
la $a0, fizzbuzz
syscall
j next_number

print_fizz:
li $v0, 4
la $a0, fizz
syscall
j next_number

print_buzz:
li $v0, 4
la $a0, buzz
j next_number

next_number:
addi $t1, $t1, 1
j loop

li $v0, 10
syscall