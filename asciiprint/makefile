main: main.o
	ld -o exec main.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64 

main.o: main.s
	as -arch arm64 -o main.o main.s
