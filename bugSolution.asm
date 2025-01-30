```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_length equ ($-array) / 2 ; Calculate the number of elements

section .text
    global _start

_start:
    ; Calculate the sum of array elements
    mov esi, array ; Load the address of the array into esi
    mov ecx, array_length ; Load the number of elements into ecx
    mov eax, 0 ; Initialize the sum to 0

loop_start:
    add ax, [esi] ; Add the current element to the sum
    add esi, 2 ; Move to the next element (2 bytes per element)
    loop loop_start ; Decrement ecx and loop until it is 0

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```