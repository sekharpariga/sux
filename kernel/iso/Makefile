all: kernel.elf

kernel.elf: loader.o
	ld -T link.ld -melf_i386 loader.o -o kernel.elf

loader.o: loader.s
	nasm -f elf32 ../loader.s -o loader.o

clean:
	rm *.o *.elf
