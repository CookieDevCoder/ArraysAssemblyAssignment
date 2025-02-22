;  Program name: "Array Assignment". Stores various float values into an array and returns the mean
;  Copyright (C) 2025  Brian Ayala

;  This file is part of the software program "Array Assignment".

;  "Array Assignment" is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.

;  "Array Assignment" is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY// without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.

;  You should have received a copy of the GNU General Public License
;  along with this program.  If not, see <https://www.gnu.org/licenses/>. 

;  Author information
;    Author name : Brian Ayala
;    Author email: brianayala2050@gnmail.com
;    Author section: 240-09
;    Author CWID : 884641556

;  For research purpose only. Please don't copy word for word. Avoid academic dishonesty. 

global manager

extern printf
extern input_array
extern output_array

segment .data
    intro db "This Program will manage your sequence of 64-bit floats", 10, "For the array enter a sequence of 64-bit floats separated by white space.", 10, 0
    askforfloats db "After the last input, press enter followed by ctrl+D:", 10, 0
    inputnotice db "These numbers were recieved and placed into an array", 10, 0
    sumnotice db "The Mean of the numbers in the array is %lf", 10, 0

segment .bss
    floats_array resq 128   ; space for 128 floats
    array_length resq 1     ; the length of the array

segment .text
manager:
    ; Save the base pointer
    push    rbp
    mov     rbp, rsp

    ; Save the general purpose registers
    push    rbx
    push    rcx
    push    rdx
    push    rsi
    push    rdi
    push    r8 
    push    r9 
    push    r10
    push    r11
    push    r12
    push    r13
    push    r14
    push    r15
    pushf

    ; Intro Text
    mov     rax, 0
    mov     rdi, intro
    call    printf

    ; Start asking for floats
    ; prompt message
    mov     rax, 0
    mov     rdi, askforfloats
    call    printf

    ;Read input using input_array.asm
    mov     rax, 0
    mov     rdi, floats_array
    mov     rsi, 128
    call    input_array

    ; Store the array in the floats array
    mov     [array_length], rax

    ; show inputted values
    mov     rax, 0
    mov     rdi, inputnotice
    call    printf

    ; print Numbers using output_array
    mov     rax, 0
    mov     rdi, floats_array
    mov     rsi, array_length
    call    output_array

    ; Restore the general purpose registers
    popf          
    pop     r15
    pop     r14
    pop     r13
    pop     r12
    pop     r11
    pop     r10
    pop     r9 
    pop     r8 
    pop     rdi
    pop     rsi
    pop     rdx
    pop     rcx
    pop     rbx

    ; Return result
    pop     rbp
    ret