# [Setup]
li $t0, 5
li $t1, 6
li $t3, 268500992
li $t4, 268501024
sw $t0, 0($t3)
sw $t1, 0($t4)
# Clear
li $t0, 0
li $t1, 0
li $t3, 0
li $t4, 0

#[Start program]
li $t3, 268500992
li $t4, 268501024
li $t5, 268501056

# Load Immediate Values
lw $t0, 0($t3)
lw $t1, 0($t4)

#Add registers together
add $t2, $t0, $t1

#Store sum in memory
sw $t2, 0($t5)