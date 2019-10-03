BITS 32

extern printf
extern scanf

section .data 
    no: db "%d",0
    prime:db "is a prime number",10,0
    not:db "is not a prime number",10,0

section .text

    global main

    main:
    push ebp
    mov ebp,esp

    lea eax, [ebp-0x4]
	push eax
	push no
	call scanf
    mov edx,0
    mov eax,[ebp-0x4] 
    mov ecx,2  
    cmp eax,1
    je true

    loop:
        cmp ecx,[ebp-0x4]
        je false   
        div ecx
        cmp edx,0
        je true
        mov edx,0
        mov eax,[ebp-0x4]
        inc ecx
        jmp loop
        

    true:
        push prime
        call printf
        leave
        ret

    false:
        push not
        call printf
        leave
        ret