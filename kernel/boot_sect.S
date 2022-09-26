[org 0x7c00] ; real mode entry point
KERNEL_OFFSET equ 0X1000
  mov [BOOT_DRIVE], dl
  mov bp, 0x9000
  mov sp, bp
  mov bx, MSG_REAL_MODE
  call print
  call print_nl

  call load_kernel
  call switch_to_pm
  jmp $

%include "boot/print.S"
%include "boot/print_hex.S"
%include "boot/disk.S"
%include "boot/gdt.S"
%include "boot/32bit_print.S"
%include "boot/switch_pm.S"

[bits 16]
load_kernel:
  mov bx, MSG_LOAD_KERNEL
  call print
  call print_nl

  mov bx, KERNEL_OFFSET
  mov dh, 16 ; our future kerenel will be larger make this big
  mov dl, [BOOT_DRIVE]
  call disk_load
  ret

[bits 32]
BEGIN_PM:
  mov bx, MSG_PROT_MODE
  call print_string_pm
  call KERNEL_OFFSET
  jmp $

BOOT_DRIVE db 0 ; it is good idea to store in memory because dl may get overwritten
MSG_REAL_MODE db "Started in 16 bit Real Mode", 0
MSG_PROT_MODE db "Landed in 32 bit Protected Mode", 0
MSG_LOAD_KERNEL db "Loading kernel into memory", 0


; padding
times 510 - ($ - $$) db 0
dw 0xaa55
