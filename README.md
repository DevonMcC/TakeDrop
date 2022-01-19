# TakeDrop
Two command-line executables to take or drop a number of characters or lines from a file, showing the result on STDIO.

For example, if our file "hi.txt" consists of these two CRLF-delimited lines:
  
Hello,

world!
  
then

   take 4 0 hi.txt
   
returns "Hell", and 

   drop 9 0 hi.txt
   
returns "orld!"; the "0" specifies working on scalars (characters).
Specifying this 2nd argument as "1" works on lines, so 

   take 1 1 hi.txt
   
Returns "Hello," and 

   drop 1 1 hi.txt
   
returns "world!".
