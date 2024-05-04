TITLE prob7_m.asm
.model small
.stack 0100h
.data
 answer DB 6 DUP(?)
.code
main PROC
 mov ax, 0
 mov cx, 10
 mov bx, 50

multiply:
 add ax, bx 
 loop multiply 
 
mov di, offset answer + size answer - 1
mov byte ptr[di], '$'
mov bx, 10

convert:
 xor dx, dx
 div bx
 add dl, '0'
 dec di
 mov [di], dl
 or ax, ax
 jnz convert
 
mov ah, 09h
lea dx, [di]
int 21h

mov ax, 4c00h 
int 21h

main endp
end main
