.model small
.stack 100h
.data
	text1 db 13,10,"Hello, what's your name? $"
	text2 db "Hello, $"
	text3 db 13,10,"Congratulations! Your first program is working!$"
	text4 db 24 dup("$")
	text5 db 13,10,"$"
.code
MAIN PROC
mov ax,@data
mov ds,ax
mov es,ax
mov ah,00h
int 10h
mov dx,offset text1
mov ah,09h
int 21h

mov byte ptr text4,30
mov dx,offset text4
mov ah,0Ah
int 21h

mov dx,offset text5
mov ah,09h
int 21h

mov dx,offset text2
mov ah,09h
int 21h

lea dx,text4[2]
mov ah,09h
int 21h

mov dx,offset text3
mov ah,09h
int 21h

mov ah,4ch
int 21h


Main endp
End main
