;  Program name: "Array Assignment". Stores various float values into an array and returns the mean
;  Copyright (C) 2025  Brian Ayala

;  This file is part of the software program "Array Assignment".

;  "Array Assignment" is free software: you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation, either version 3 of the License, or
;  (at your option) any later version.

;  "Array Assignment" is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
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

global input_array

extern scanf
extern isfloat
extern printf
extern atof

segment .data
    stringform db "%s", 0
    invalidNotice db "Input is invalid, please input a float value.", 10, 0
segment .bss
    buffer  resb 64
segment .text
input_array:
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

    ; Recieve the array
    mov     r12, rdi    ; array
    mov     r13, rsi    ; length of array
    xor     r14, r14    ; index

    ; reading input
read_input:

    ; Check if array has room
    cmp     r14, r13
    jge     endloop


    ; Scan for string
    mov     rax, 0
    mov     rdi, stringform
    mov     rsi, buffer
    call    scanf

    ; Validate String
    mov     rax, 0
    mov     rdi, buffer
    call    isfloat

    ; rax hold 0(false) or non-zero(true)
    cmp    rax, 0
    je     invalid_input

    ; convert string to double
    mov     rax, 0
    mov     rdi, buffer
    call    atof        ; xmm0 contains double

    movsd   [r12 + 8 * r14], xmm0
    inc     r14
    jmp     endloop

invalid_input:
    mov     rax, 0
    mov     rdi, invalidNotice
    call    printf
    jmp     read_input

endloop:
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
    pop     rbp

    ret