;printing of hex value

;%include "print.S"

print_hex:
  pusha
  mov cx, 0 ; index variable

hex_loop:
    cmp cx, 4
    je end

    ; convert last char of dx register into ascii
    mov ax, dx
    and ax, 0x000f
    add ax, 0x30
    cmp ax, 0x39
    jle step2
    add al, 7

step2:
    mov bx, HEX_OUT + 5
    sub bx, cx
    mov [bx], al
    ror dx, 4 ; right rotate by 4 bits

    add cx, 1
    jmp hex_loop

end:
  mov bx, HEX_OUT
  call print

  popa
  ret

HEX_OUT:
  db '0x0000', 0 ; reserve memory for output
