#!/bin/bash

#  Program name: "Array Assignment". Stores various float values into an array and returns the mean
#  Copyright (C) 2025  Brian Ayala

#  This file is part of the software program "Array Assignment".

#  "Array Assignment" is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.

#  "Array Assignment" is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY// without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>. 

#  Author information
#    Author name : Brian Ayala
#    Author email: brianayala2050@gnmail.com
#    Author section: 240-09
#    Author CWID : 884641556

#  For research purpose only. Please don't copy word for word. Avoid academic dishonesty. 

nasm -f elf64 manager.asm -o manager.o
nasm -f elf64 input_array.asm -o input_array.o
nasm -f elf64 output_array.asm -o output_array.o
nasm -f elf64 sum.asm -o sum.o
nasm -f elf64 swap.asm -o swap.o
nasm -f elf64 isfloat.asm -o isfloat.o
gcc -c sort.c -o sort.o
g++ main.cpp manager.o input_array.o output_array.o sum.o sort.o swap.o isfloat.o -o mean.out -no-pie
./mean.out
