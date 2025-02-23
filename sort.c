//  Program name: "Array Assignment". Stores various float values into an array and returns the mean
//  Copyright (C) 2025  Brian Ayala

//  This file is part of the software program "Array Assignment".

//  "Array Assignment" is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.

//  "Array Assignment" is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY// without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.

//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>. 

//  Author information
//    Author name : Brian Ayala
//    Author email: brianayala2050@gnmail.com
//    Author section: 240-09
//    Author CWID : 884641556

//  Using Visual Studio Code

//  For research purpose only. Please don't copy word for word. Avoid academic dishonesty. 


extern void swap(double* x, double* y);

void sort(double *array, int length) {
    for(int i = 0; i < length - 1; i++) {
        for (int j = 0; j < length - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                swap(&array[j], &array[j + 1]);
            }
        }
    }
}