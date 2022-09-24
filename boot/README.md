## List of all commands
    nasm -f bin main.S -o main.bin

### running the image using qemu
#### windows:
    qemu-system-x86_64.exe main.bin
#### macos:
    qemu-system-x86_64 main.bin
