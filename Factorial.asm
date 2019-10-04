extern printf
extern scanf 

section .data
		input: db "%d" , 0
		output: db "Factorial is %d" ,10 , 0
section .text
		global main

		main:

		push ebp
		mov ebp,esp
		sub esp, 0x10

		lea eax, [ebp-0x4]
		push eax
		push input
		call scanf

		mov ecx,1
		mov ebx,0
		Loop:
			add ebx,1
			mov edx, dword [ebp-0x4]
			imul ecx,ebx
			cmp ebx,edx
			jl Loop
		push ecx
		push output
		call printf
		leave
		ret