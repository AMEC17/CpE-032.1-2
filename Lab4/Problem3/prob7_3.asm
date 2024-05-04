TITLE prob7_3.asm
.model small
.stack 0100h
.data
	message DB "Hello World!$"
.code
main proc
mov ax, @data
mov ds, ax
mov ah, 09h 
mov dx, offset message
int 21h 

mov ax, 4c00h 
int 21h

main endp
end main
