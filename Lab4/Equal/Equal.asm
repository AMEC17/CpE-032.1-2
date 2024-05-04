TITLE equal.asm
.model small
.stack 
.data
.code
main proc
                 MOV DL,41h
                 MOV DH,41h
                 CMP DH,DL
                 JE TheyAreEqual
                 JMP TheyAreNotEqual
TheyAreNotEqual:
            MOV AH,02h
            MOV DL,4Eh
            INT 21h
            INT 20h
TheyAreEqual:
            MOV AH,02h
            MOV DL,59h
            INT 21h
            INT 20h
main endp
end main
