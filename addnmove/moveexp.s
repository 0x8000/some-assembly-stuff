.global _start
.align 4

_main: 	
	mov	X2, #0x6E3A
	movk	X2, #0x4F5D, lsl #16
	movk 	X2, #0xFEDC, lsl #32
	movk	X2, #0x1234, lsl #48

// Just move w2 into w1
	mov 	W1, W2

	
	mov	X1, X2, lsl #1	// logical shift left
	mov 	X1, X2, lsr #1	// logical shift right
	mov 	X1, X2, asr #1	// arithmetic shift right
	mov 	X1, X2, ror #1	// rotate right

	
	mov 	X1, #0xABCDEF11 
	movn	W1, #45

	mov 	W1, #0xFFFFFFFE	// = -2

	mov 	X0, #0	// use 0 return code
	mov 	X16, #1	// system call number 1 terminates this program

	svc 	#0x80
