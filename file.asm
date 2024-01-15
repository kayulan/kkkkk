section .data
    filename db 'myfile.txt', 0
    content db 'Welcome to Tutorials Point', 0

section .bss
    info resb 50  

section .text
    global _start

_start:
    mov eax, 5       
    mov ebx, filename
    mov ecx, 0x42    
    mov edx, 0644    
    int 0x80

    cmp eax, -1
    je file_error

    mov ebx, eax     
    mov eax, 4       
    mov ecx, content
    mov edx, content_len
    int 0x80

    mov eax, 6       
    int 0x80

    mov eax, 5       
    mov ebx, filename
    mov ecx, 0       
    int 0x80

    cmp eax, -1
    je file_error

    mov ebx, eax     
    mov eax, 3       
    mov ecx, info
    mov edx, 50      
    int 0x80

    mov eax, 4       
    mov ebx, 1       
    mov ecx, info
    mov edx, 50     
    int 0x80

    mov eax, 6       
    int 0x80

    mov eax, 1       
    xor ebx, ebx    
    int 0x80

file_error:
    jmp exit_program

section .equ
    content_len equ 28  

exit_program:

