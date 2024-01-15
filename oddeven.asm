section .data

    prompt db "Enter a number: ", 0

    odd_msg db "The number is odd.", 0

    even_msg db "The number is even.", 0



section .bss

    number resd 1  



section .text

    global _start



_start:

    ; Prompt for input

    mov eax, 4  

    mov ebx, 1  

    mov ecx, prompt

    mov edx, 16  

    int 0x80    



    ; Read the number

    mov eax, 3  

    mov ebx, 0  

    mov ecx, number

    mov edx, 4  

    int 0x80    



    ; Convert ASCII to integer

    mov eax, [number]

    sub eax, '0'



    ; Check if the number is odd or even

    test eax, 1  

    jz even      

    

    ; Odd case

    mov eax, 4  

    mov ebx, 1  

    mov ecx, odd_msg

    mov edx, 18  

    int 0x80    

    jmp exit



even:

    ; Even case

    mov eax, 4  

    mov ebx, 1  

    mov ecx, even_msg

    mov edx, 19  

    int 0x80    



exit:

    ; Exit the program

    mov eax, 1      

    xor ebx, ebx    

    int 0x80        

