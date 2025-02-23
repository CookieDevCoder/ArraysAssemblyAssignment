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

#include <iostream>

extern "C" double manager();

int main() {
    std::cout << "Welcome to Arrays of floating point numbers,\nBrought to you by Brian Ayala\n\n";

    double average = manager();

    std::cout << "\nMain recieved " << average << ", and will keep it for future use\n";
    std::cout << "Main Will now return 0 to the Operating System. Bye!\n";
    return 0;
}