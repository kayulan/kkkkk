section .data

	star 	DB '*'

	newLine DB 0xa	

section .text

	global _start

_start:

	mov ecx,9	

ql:	

	push ecx

	mov ecx,9

	q1:

		push ecx

		

		mov eax,4

		mov ebx,1

		mov ecx,star

		mov edx,1

		

		int 0x80

		

		pop ecx

		loop q1	

	mov eax,4

	mov ebx,1

	mov ecx,newLine

	mov edx,1

	

	int 0x80

	pop ecx

	loop ql

	mov eax,1

	int 80h

