.model small
.stack 64
.data
divided DB ?
divisor DB ?
msg1 DB "Divided: $"
msg2 DB "Divisor: $"
msg3 DB "Quotient: $"
msg4 DB "Remainder: $"
quotient DB ?
remainder DB ?

.code
main proc
        mov ax, @data
        mov ds,ax

        mov ah,09h
        lea dx,msg1
        int 21h

        mov ah,01h
        int 21h
        mov divided,al

        sub divided,30h

	;-----------ENTER NEW LINE
	mov ah,02h
        mov dl,0ah
        int 21h
        mov dl,0dh
	int 21h

	mov ah,09h
        lea dx,msg2
        int 21h

        mov ah,01h
        int 21h
        mov divisor,al

        sub divisor,30h

	xor ax,ax ;----------CLEAR REGISTER
	xor dx,dx
        mov al,divided
	mov bl,divisor
        div bl
        
        mov quotient,al
	mov remainder,ah

	;-----------ENTER NEW LINE
	mov ah,02h
        mov dl,0ah
        int 21h
        mov dl,0dh
	int 21h

	mov ah,09h
        lea dx,msg3
        int 21h

	mov ah,02h
        mov dl,quotient
	add dl,30h
        int 21h
	
	mov ah,02h
	mov dl,0ah
	int 21h
	mov dl,0dh
	int 21h

	mov ah,09h
        lea dx,msg4
        int 21h

	mov ah,02h
        mov dl,remainder
	add dl,30h
        int 21h

        mov ah,4ch
        int 21h
main endp
end main
