all : os-image

run : all
	qemu-system-x86_64 os-image

os-image : boot_sect.bin kernel.bin
	cat $^ > os-image

boot_sect.bin : boot_sect.S
	nasm -f bin boot_sect.S -o $@

kernel.bin : kernel_entry.o kernel.o
	ld -o kernel.bin -Ttext 0x1000 $^ --oformat binary

kernel.o : kernel.c
	gcc -ffreestanding -c kernel.c -o $@

kernel_entry.o : kernel_entry.S
	nasm -f elf kernel_entry.S -o $@


clean :
	rm *.bin *.o
