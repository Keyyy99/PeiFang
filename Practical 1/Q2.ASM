.model small
.stack 64
.data
CHAR_A DB "A"

.code
main proc
        mov ax,@data
        mov ds,ax

        MOV AH,02H
        MOV DL,CHAR_A
        INT 21H
	
	mov DL, ","
	int 21h

	add CHAR_A, 20h
	mov dl, CHAR_A
	int 21h

        mov ah,4ch
        int 21H
main endp
end main
