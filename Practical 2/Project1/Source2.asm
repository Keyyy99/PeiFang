INCLUDE Irvine32.inc

.data
LIST DWORD 19900,3000,50000,70000,900 

.code

main PROC

	mov  esi,OFFSET LIST
	mov ecx,LENGTHOF LIST

L1: mov eax,dword ptr [esi] ;get the values stored in address of esi
	call WriteInt
	call Crlf
	add esi,type LIST		;return 4
	loop L1

	exit
main ENDP
END main
