section .text

	global main 

main: 

	mov edx,len1 

	mov ecx,msg1

	mov ebx,1 

	mov eax,4 

	int 0x80 

	

	mov edx,len2 

	mov ecx,msg2 

	mov ebx,1 

	mov eax,4 

	int 0x80 

	

	mov edx,len3 

	mov ecx,msg3 

	mov ebx,1 

	mov eax,4 

	int 0x80 



	mov eax,1 

	int 0x80 

section .data

	msg1 db 'Hello, programmers!', 0xa 

	len1 equ $ - msg1 

	msg2 db 'Welcome to the world of,', 0xa 

	len2 equ $ - msg2 

	msg3 db 'Linux assembly programming!', 0xa 

	len3 equ $ - msg3 