[org 0x7c00]
mov ah, 0x0e ; tty mode

mov dx, ds
call print_hex
call newline
;without setting ds segment register 1
mov al, [secret_data]
int 0x10
call twoNewLines

; setting ds segment register 2
mov bx, 0x7c0
mov ds, bx

mov dx, ds
call print_hex
call newline

mov al, [secret_data]
int 0x10
call twoNewLines

;without setting the es segment register 3
mov al, [es:secret_data] ; doesn't looks correct
int 0x10
call twoNewLines

; setting es segment register 4
mov bx, 0x7c0
mov es, bx

mov al, [es:secret_data]
int 0x10
call twoNewLines

jmp $

%include "../util/asm/print.S"
%include "../util/asm/print_hex.S"

secret_data:
  db "X"

; magic number
times 510 - ($-$$) db 0
dw 0xaa55
