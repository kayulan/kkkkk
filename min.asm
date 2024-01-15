
section .data

	msg1 db 'First number : '
	len1 equ $-msg1
	msg2 db 'Second number : '
	len2 equ $-msg2
	msg3 db 'Third number : '
	len3 equ $-msg3
	msg4 db 'The Largest number : '
	len4 equ $-msg4
	
section .bss
	num1 resd 1
	num2 resd 1
	num3 resd 1
	
	res resd 1
	
section .text
	global _start
_start:
	mov eax,4
	mov ebx,1
	mov ecx,msg1
	mov edx,len1
	int 0x80
	
	mov eax,3
	mov ebx,0
	mov ecx,num1
	mov edx,4
	int 0x80
	
	mov eax,4
	mov ebx,1
	mov ecx,msg2
	mov edx,len2
	int 0x80
	
	mov eax,3
	mov ebx,0
	mov ecx,num2
	mov edx,4
	int 0x80
	
	mov eax,4
	mov ebx,1
	mov ecx,msg3
	mov edx,len3
	int 0x80
	
	mov eax,3
	mov ebx,0
	mov ecx,num3
	mov edx,4
	int 0x80
	
	mov eax,[num1]
	cmp eax,[num2]
	jl check_num1_greater
	
	mov eax,[num2]
	mov [res],eax
	jmp check_num3
	
check_num1_greater:
	mov eax,[num1]
	mov [res],eax
	jmp check_num3
	
check_num3:
	cmp eax,[num3]
	jl _exit
	
	mov eax,[num3]
	mov [res],eax
	
_exit:	
	mov eax,4
	mov ebx,1
	mov ecx,msg4
	mov edx,len4
	int 0x80
	
	mov eax,4
	mov ebx,1
	mov ecx,res
	mov edx,4
	int 0x80
	
	mov eax,1
	mov ebx,0
	int 0x80