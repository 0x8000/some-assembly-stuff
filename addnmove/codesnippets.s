.global _main
.align 4

_main:
l1:	add	x0, xzr, x1
	mov 	x0, x1
	arr	x0, xzr, x1
l2:	
	mov	x2, #0x6e3a
	movk	x2, #0x4f5d, lsl #16
	movk	x2, #0xfedc, lsl #32
	movk	x2, #0x1234, lsl #48
l3:
	lsl	X1, X2, #1 // logical shift left
	lsr	X1, X2, #1 // logical shift right
	asr 	X1, X2, #1 // arithmetic shfit right	
	ror 	X1, X2, #1 // rotate right
l4:
	lsl 	X1, X2, #1  // logical shift left
	lsr	X1, X2, #1  // logical shift right	  asr 	  X1, X2, #1  // Arithmetic shift right
	ror 	X1, X2, #1  // Rotate right

l5: 	// Too big for #imm16
	mov 	X1, #0xAB000000
	
l6:
	add 	X2, X1, #4000
	add 	X2, X1, #0x20, lsl 12
	add 	X2, X1, X0
	add	X2, X!, X0, lsl 2
	add 	X2, X1, W0, SXTB
	add	X2, X1, W0, UXTH 2
	
l8:	
	adds 	X0, X0, #1
l9:
	adds 	X1, X3, X5	// Lower order 64-bits
	adc 	X0, X2, X4 	// Higher order 64-bits

	mov 	X0, #0		// Use 0 return code
	mov 	X16, #1		// System call number 1 terminates this program 
	svc 	#0x80		// Call kernel to terminate the program 

.data
output:	.ascii "this is a string.\n"
