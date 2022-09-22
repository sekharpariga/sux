## List of all commands
    `nasm -f bin first_boot_sector.asm -o first_boot_sector.bin`

### running the image using qemu
#### windows:
    `qemu-system-x86_64.exe first_boot_sector.bin`
#### macos:
    `qemu-system-x86_64 first_boot_sector.bin`
