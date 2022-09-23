; We learn sp and bp pointers access
;[org 0x7c00]  this is optional setting

mov ah, 0x0e ; enable tty mode
mov bp, 0x8000 ; delta = 0x8000 - 0x7c00 ~ 0x0400
MOV sp, bp

push 'R'
push 'A'
push 'H'
push 'K'
push 'E'
push 'S'

mov al, [0x7ffe]
int 0x10

mov al, [0x7ffd]
int 0x10

call twoNewLines

pop bx
mov al, bl ; low
int 0x10

pop bx
mov al, bl ; low
int 0x10

pop bx
mov al, bl ; low
int 0x10

pop bx
mov al, bl ; low
int 0x10

pop bx
mov al, bl ; low
int 0x10

pop bx
mov al, bl ; low
int 0x10

call twoNewLines

jmp $

%include "../util/asm/print.asm"


; boot sector magic number
times 510 - ($ - $$) db 0
dw 0xaa55
