TITLE 2s_comp.asm
.model small
.stack 0100h
.data
 bin_num db 10101010b
.code
main proc
mov al, byte [bin_num]
not al
add al, 00000001b
mov [bin_num], al

mov ax, 4c00h
int 21h

main endp
end main
