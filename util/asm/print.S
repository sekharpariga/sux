;this defines the utility functions print, newline
print:
  pusha

start:
  mov al, [bx]
  cmp al, 0
  je done
  mov ah, 0x0e
  int 0x10
  add bx, 1
  jmp start

twoNewLines:
  pusha

  mov ah, 0x0e
  mov al, 0xa ; line feed
  int 0x10
  int 0x10
  mov al, 0x0d ; carriage return
  int 0x10

  popa
  ret

newline:
  pusha

  mov ah, 0x0e
  mov al, 0xa ; line feed
  int 0x10
  mov al, 0x0d ; carriage return
  int 0x10

  popa
  ret


space:
  pusha

  mov ah, 0x0e
  mov al, 0x20 ; decimal 32 is ascii space value
  int 0x10

  popa
  ret


loop:
  pusha
loopstart:
  mov ah, 0x0e
  cmp cl, 0
  je done
  int 0x10
  sub cl, 1
  jmp loopstart

; frequently used routines
done:
  popa
  ret
