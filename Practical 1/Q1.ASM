.model small
.stack 64
.data
val1 DB 6
val2 DB 3
val3 DB 4

.code
main proc
        mov ax,@data
        mov ds,ax

	MOV AH,02H
        MOV DL,val2
	ADD DL,35h
	Sub DL,val1
	add DL,val3
        INT 21H

        mov ah,4ch
        int 21H
main endp
end main
