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
global sum

segment .data
; Empty
segment .bss
; Empty
segment .text
sum:
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

    ; Set registers
    mov     r8, rdi    ; array
    mov     r9, rsi    ; length of array
    xor     r10, r10    
    inc     r10         ; index initialized to 1
    movsd   xmm10, [r8] ; first element of array

sumloop:

    ; Check Index for overflow
    cmp     r10, r9
    jge     endsumloop

    ; Add current iteration to sum
    movsd   xmm11, [r8 + 8 * r10]   ;xmm11 = current float iteration
    addsd   xmm10, xmm11

    ; Move to next value
    inc     r10
    jmp     sumloop

endsumloop:
    ; return sum to xmm0
    movsd   xmm0, xmm10

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