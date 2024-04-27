.model small
.stack 100h
.data
	text1 db 13,10,"Enter a string: $"
	text2 db 24 dup("$")
	text3 db 13,10,"$"
.code
MAIN PROC
mov ax, @data
mov ds, ax
mov es,ax
mov al,03h
mov ah,00h
int 10h

mov dx, offset text1
mov ah, 09h
int 21h

mov byte ptr text2, 30
mov dx, offset text2
mov ah, 0Ah
int 21h

mov dx, offset text3
mov ah, 09h
int 21h

lea dx, text2[2]
mov ah, 09h
int 21h

mov bl, text2[1]
mov dx, offset[text2+2]
mov ah, 09h
int 21h

mov al, bl
mov dh, 2h
mov dl, al
mov bh, 0
mov ah, 2h
int 10h

lea dx, text2[2]
mov ah, 09h
int 21h

mov ax, 4C00h
int 21h
Main endp
End main
