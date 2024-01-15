section .data
	star db '*'
	line db 0xa
	
section .text
	global _start
	_start:
	mov ecx,9    ;9 stars
	
	L1:
		push ecx
	
	L2:
		push ecx
		
		mov edx,1
		mov ecx,star
		mov ebx,1
		mov eax,4
		int 0x80
		
		pop ecx
		
		loop L2
		
		mov edx,1
		mov ecx,line
		mov ebx,1
		mov eax,4
		int 0x80
		
		pop ecx
		
		loop L1
		
		mov eax,1
		int 0x80
