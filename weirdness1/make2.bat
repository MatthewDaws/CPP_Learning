as minimal2.asm -o min2.o
g++ min2.o -o min2.exe
objdump -d min2.exe > min2_all.asm
min2