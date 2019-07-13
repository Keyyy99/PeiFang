.model small
.stack 64
.data
CHAR_A DB "a"
CHAR_K DB "k"

.code
main proc
        mov ax,@data
        mov ds,ax

        MOV AH,02H
	mov dl, 28h
	int 21h
        
	MOV DL,CHAR_A
        INT 21H
	
	mov DL, ","
	int 21h

	mov dl, CHAR_K
	int 21h
	
	mov dl,29h
	int 21h
	
	mov dl, 10h
	int 21h

	mov dl,28h
	int 21h

	MOV DL,CHAR_K
        INT 21H
	
	mov DL, ","
	int 21h

	mov dl, CHAR_A
	int 21h

	mov dl,29h
	int 21h

        mov ah,4ch
        int 21H
main endp
end main
