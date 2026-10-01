.data 
helloworld: .ascii "Hello World"
li $v0, 4
la $a0, helloworld

syscall