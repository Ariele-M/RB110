input: string
output: a hash with each key being a character from the string and the value the frequency that the character occurs.

Assumptions: 
- keys/ string characters are case sensitive

Algorithm
- initialized empty hash
- loop or iterate through each character in the string
  and add it to the hash as a key with a value of 1. 
  - If the character is already a key in the hash, increase the value by 1
- return the hash
