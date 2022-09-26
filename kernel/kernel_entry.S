[bits 32] ; Enter into protected 32 bit mode
[extern main] ; tell to the linker main symbol is resolved from other linking file

call main ; invoke main function from C file
jmp $
