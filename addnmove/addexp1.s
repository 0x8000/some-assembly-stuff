.global _main
.align 4

_main:	
	movn	W0, #2
	add	W0, W0, #1
// Multiply 2 by -1 by using movn and then adding 1

	mov	X16, #1	// system call number 1 terminates this program
	svc 	#0x80	// call kernel to terminate the program

	
