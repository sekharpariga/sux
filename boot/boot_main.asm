[org 0x7c00] ; tell the assembler that our offset is bootloader code

main:
  call twoNewLines

  mov bx, strHello
  call print
  call newline

  ;loop 5 times print space
  mov al, 0x20
  mov cl, 0x05
  call loop
  call newline

  mov bx, strSekar
  call print
  call twoNewLines
  call twoNewLines

  mov bx, strGoodBye
  call print
  call newline

jmp $

%include "utility_routines.asm"

;data

strHello:
  db 'Hello World!', 0

strGoodBye:
  db 'Goodbye!...', 0

strSekar:
  db 'Welcome to the Binary World Sekhar', 0


;padding and magic number
times 510-($-$$) db 0
dw 0xaa55
