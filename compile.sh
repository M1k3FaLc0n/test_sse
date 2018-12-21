nasm -f elf32 lib.asm -o lib.obj
gcc -m32 main.c lib.obj -o main
./main