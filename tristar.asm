section .text

	global main

main:

	mov edx, 1

	mov ecx, s2

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov edx, 1

	mov ecx, newline

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov edx, 2

	mov ecx, s2

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov edx, 1

	mov ecx, newline

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov edx, 3

	mov ecx, s2

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov edx, 1

	mov ecx, newline

	mov ebx, 1

	mov eax, 4

	int 0x80

	

	mov eax, 1

	int 0x80

	

section .data

s2 times 3 db '*'

newline db 0xa

; nasm -f elf tristar.asm
; ld -m elf_i386 -s -o tristar tristar.o
; ./tristar