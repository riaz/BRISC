# RISC-V Assembler Program

.global _start

_start:

	# setting up the parameters to print hello world
	addi a0, x0, 1    # setting up the file description 1 - i.e standard output
        la a1, helloworld # load the address of the helloworld string
        addi a2, x0, 13   # Setting the length of the string
        addi a7, x0, 64   # Linux write sys call - 64
        ecall             # call linux to output the string

	# setting up the parameters to exit the program
	addi a0, x0, 0   # returning 0
        addi a7, x0, 93  # linux sys call 93 to terminate the program
        ecall 





.data
helloworld:
	.ascii "Hello World!\n" # the string to print with a new line
