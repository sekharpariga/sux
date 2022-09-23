## List of all commands
    nasm -f bin boot_main.asm -o boot_main.bin

### running the image using qemu
#### windows:
    qemu-system-x86_64.exe boot_main.bin
#### macos:
    qemu-system-x86_64 boot_main.bin
