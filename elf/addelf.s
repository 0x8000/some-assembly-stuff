
@ ELF 

.global _main @ provide program starting address to linker

@ multiply 2 by -1 by using mvn and then adding 1 

_main: 
	mvn r0, #2
	add r0, #1

@ setup the parameters to exit the program
@ and then call Linux to do it.
	mov r0, #0	@ use 0 return code
	mov r7, #1	@ service command code 1 termintes this program
	svc 0 		@ call linux to temrinate the program
