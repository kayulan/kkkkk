section .text

		global main 

main:
 
		mov al,'3'
		sub al, '0'
		mov bl, '2'
		sub bl, '0'
		mul bl
		add al, '0'
		mov [res], al
		mov ecx,msg
		mov edx, len
		mov ebx,1 
		mov eax,4 
		int 0x80 
		
		nwln
		
		mov ecx,res
		mov edx, 1
		mov ebx,1 
		mov eax,4 
		int 0x80 
		mov eax,1 
		int 0x80 

section .data

msg db "The result is:", 0xA,0xD
len equ $- msg
segment .bss
res resb 1

; nasm -f elf mul.asm
; ld -m elf_i386 -s -o mul mul.o
; ./mul