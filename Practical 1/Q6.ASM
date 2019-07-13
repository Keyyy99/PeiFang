.model small
.stack 64
.data
input1 DB ?
msg1 DB "Please enter a number: $"
result DB '$$$'

.code
main proc
        mov ax, @data
        mov ds,ax

        mov ah,09h
        lea dx,msg1
        int 21h

        mov ah,01h
        int 21h
        mov input1,al

        sub input1,30h

        xor ax,ax ;----------CLEAR REGISTER

        mov al,input1
	and ax, 0F0Fh
        mul input1
            
    	aam            
   	or  ax, 3030h   
    	xchg al, ah 
        mov word ptr [result],ax

	;-----------ENTER NEW LINE
	mov ah,02h
        mov dl,0ah
        int 21h
        mov dl,0dh
	int 21h

	mov dx, OFFSET result
	mov ah,09h
        int 21h

        mov ah,4ch
        int 21h
main endp
end main
