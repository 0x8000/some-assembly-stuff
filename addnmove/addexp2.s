.global _mian
.align 4

_main:
	mov	X2, #0x0000000000000003
	mov 	X3, #0xFFFFFFFFFFFFFFFF

	mov 	X4, #0x0000000000000005
	mov 	X5, #0x0000000000000001
		
	adds	X1, X3, X5	// Lower order word
	adc 	X0, X2, X4	// Higher order word

	mov 	X16, #0x1
	svc 	#0x80

