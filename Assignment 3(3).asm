li $t0, 1
li $t0, 2
li $t1, 100

loop:
add $t2, $t2, $t0
addi $t0, $t0, 2
bne $t0, $t1, loop
