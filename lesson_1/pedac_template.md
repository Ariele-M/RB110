**Problem**

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two ingegers, the third row three integers, and so on. Given an integer representing the number of the particular row, return an integer representing the sum of all the integers in that row.

**Rules/ Requirements**
- Sequence of even integers
- Sequence begins with two
- integers are consecutive
- sequence grouped into rows
- each row is incrementally larger than the last. 1, 2, 3...
- Row 'number' equals the number of elements in that row.
  - row 1 has 1 element
  - row 2 has 2 elements
- Input: a single integer
  - identifies a 'row', which is a subset of a sequence of integers
- Output: a single integer
  - The sum of the integers in the 'row' identified by the input integer

- Sequence:
  2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
...

- How do we create the structure?

-----
**Examples and Test Cases**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

----
**Data Structures**

- Overall structure represents a sequence as a whole
- Within that structure there are individual rows
- Rows are in a set order in the sequence
- Individual rows contain integers
- Integers are in a set order in the context of the sequence

Nested Array

[
  [2],
  [4, 6],
  [8, 10, 12],
  ...
]

---
**Algorithm**

1. Create an empty "rows" array to contain all the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the neccessary rows have been created as defined by the input integer
  a. Rows have been created when the length of the rows array equals the input integer.
4. Sum the final row
5. Return the sum

*Problem: Create a Row*

Rules: 
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row for part of an overall larger sequence
- Rows are of different lengths
- Input: the information needed to create the output
  - The starting integer of the row. 
  - The length of the row
- Output: the row itseld: '[8, 10, 12]' 

Examples: 
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data structures:
- An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 and 3 until the array has reached the correct length
5. Return the 'row' array

---
**Code**

