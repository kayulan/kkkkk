section .text
	global main
main:
	mov eax,'10'
	sub eax, '0'
	mov ebx, '4'
	sub ebx, '0'
	sub eax, ebx
	add eax, '0'
	mov [sum], eax
	mov ecx,msg
	mov edx, len
	mov ebx,1
	mov eax,4
	int 0x80

	mov ecx,sum
	mov edx, 1
	mov ebx,1
	mov eax,4
	int 0x80
	mov eax,1
	int 0x80

section .data
	msg db "The sum is:", 0xA,0xD
	len equ $ - msg

segment .bss
sum resb 1

; nasm -f elf sub.asm
; ld -m elf_i386 -s -o sub sub.o
; ./sub