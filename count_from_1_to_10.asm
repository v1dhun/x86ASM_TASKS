BITS 32

extern printf

section .rodata
    no: db "%d",10,0

section .text

    global main

    main:
    push ebp
    mov ebp, esp

    loop:
        inc ebx
        push ebx
        push no
        call printf
        cmp ebx, 10 ; set flags based on the comparison
        jl loop  ; then jump based on the flags
    leave
    ret