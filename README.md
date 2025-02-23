This was an assignment I made for my CPSC 240 Class for Computer Organization and Assembly Programming.

This program is created to calculate the mean of an array of floats using assembly
This program also prints the sum of the floats and sorts the array in acending order.

There is a known bug where if you call output_array after calling sum, the output_array will break somehow.
When output array is called, rdi contains the array and rsi contains the length.
in output_array, we transfer those values to r13 and r14 respectively.
r15 is used for the current index and is set to 0 using xor.

It works perfectly fine. You can run it multiple times with no problems.
But the moment you call sum, output_array breaks.
there is a section of code that ends the loop
```
cmp   r15, r14
jge   endprintloop
```
This code is supposed to end the loop once the index(r15) is greater than or equal to r14(length of array)
Yet for some reason, despite r15 being incramented every iteration, it does not stop once reaching r14's value and surpasses it.

Ive tested to see if r15 and r14 are the right value, and they are.
When an array of 4 floats are inputted, r14 = 4, and r15 is initialized to 0.
It iterates adding 1 to r15 for each float it goes over,
but then it reaches the value of 4, meaning r15 = r14, yet the program does not jump out of the loop.
it continues to go up until eventually reaching a segmentation fault.

I tried to fix this, but to no avale.
Sum does not seem to have anything that could affect anything in output_array.
they even use different registers. sum uses r8,r9, and r10 instead of r13, r14, and r15

calling sum and output_array use the same parameters, thats the only similarity.
```
mov  rax, 0
lea  rdi, array
mov  rsi, length
call sum/output_array
```
Which means...
```
rdi = array
rsi = length
```

I was unable to fix this, I hope to whoever ends up reading this can understand my fustration.
This bug will likely never be fixed since this is just an assignment I am now done with.

I opted to sort the array first and output the sorted array before calling sum and calculating the mean.
I hope I still get full or close to full credit.
But that is all.

