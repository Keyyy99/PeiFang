INCLUDE Irvine32.inc

.data
count DWORD 28
fibonacci DWORD 30 DUP (?)

.code
main proc

 mov  eax, 1
 call WriteInt
 call Crlf
 call WriteInt
 call Crlf
 mov  edx, eax
 mov  ecx, 28
L1:
 xchg eax, edx
 add  eax, edx
 call WriteInt
 call Crlf
 loop L1

	exit
main ENDP
end main