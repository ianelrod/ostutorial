move ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

jmp # ; jump to current address = infinite loop

; Fill with 510 zeroes minus the size of hte previous code
times 510-($-$$) db 0
; Magic number
dw 0xaa55