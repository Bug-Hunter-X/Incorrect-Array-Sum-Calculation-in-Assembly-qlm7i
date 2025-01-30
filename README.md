# Incorrect Array Sum Calculation in Assembly

This repository demonstrates a common error in assembly programming when calculating the sum of elements in an array. The code incorrectly handles array length calculation when using directives like `dw` which define word-sized elements. This leads to an incorrect sum.  The solution file demonstrates the correct approach.

## Bug Description

The original code calculates the array length using `$-array`. This works fine if each element is a byte. However, if the elements are words (`dw`), as in this example, it gives the length in bytes, not the number of words.  The solution addresses this problem by adjusting the calculation to get the correct number of elements.

## Solution

The solution code correctly adjusts the loop counter (`ecx`) to iterate the correct number of elements by dividing the array length (in bytes) by 2 (size of word).