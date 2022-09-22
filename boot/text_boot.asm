; This code take the help of BIOS to print the chars in screen using interrupts

mov ah, 0x0e ; tty mode
; Hello
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10 ; al is still l
mov al, 'o'
int 0x10
mov al, ' '
int 0x10

; World!
mov al, 'W'
int 0x10
mov al, 'o'
int 0x10
mov al, 'r'
int 0x10
mov al, 'l'
int 0x10
mov al, 'd'
int 0x10
mov al, '!'
int 0x10
int 0x10
int 0x10

jmp $ ; jump to current address = infinite loop
times 510 - ($-$$) db 0
dw 0xaa55
