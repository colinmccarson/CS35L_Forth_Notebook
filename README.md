Usage:

Developed under WSL for WSL. Will probably not work if not run on WSL.

FIRST - navigate to /client directory, run npm install, then run npm start

THEN - navigate to /server directory, run npm install, then npm start. This will start the server, and connect the client to the forth interpreter. Then type your forth code in any number of the code blocks, and press run. State not saved on refresh.

If the interpreter - server pipeline is having a good day, and decides to work, the following FORTH words are built-in.

A forth word is any whitespace delimited stream of characters. Integers (e.g. -5 7 8) are pushed directly to the stack. Strings are not yet supported, but could probably be implemented (in forth) with some effort. Thus everything on the stack is an integer.

"." This word pops and prints the top of the stack, as an integer.
"EMIT" pops and prints as ASCII
"WORD" (experimental) prompts user input from stdin, converts to integer and pushes to the stack. Garbage in, garbage out (numerical only).
"VAR <varname>" Creates a variable
"!" pops an address and a value (in that order) and stores the value to that address (ex VAR X 36 X ! stores 36 at the location of X)
"@" Pops an address and pushes the value at that address
"IF" begins a conditional IF block. MUST be terminated by a "THEN" ex "WORD 5 > IF something something THEN"
 "ELSE" must be used after an IF and inside a THEN-terminated conditional block.
"+" "-" ">" "<" ">=" "<=" "==" "!=" are arithmetic and logical operators. Each pops two arguments from the stack, and pushes their return value.
"WHILE" begins a WHILE loop. Takes a truth value.
"ENDWHILE" terminates a WHILE loop body, and also takes a truth value. That is, ENDWHILE checks whether the loop continues, so be sure to push your value before ENDWHILE.
":" indicates the beginning of a user-defined function, and ";" terminates its definition and also acts as a return (pops the address stack, which is not exposed to the user in general, at least if you are using the words as intended). e.g. : CR 10 EMIT ; defines carriage-return (prints newline).
"DUP" duplicates the top of the stack
"SWAP" swaps the top with top->next on the stack
"OVER" pushes a copy of the 2nd from the top of the stack to the stack
"DEPTH" returns the stack depth
"POP" pops the stack.


Optionally, FORTH and the interpreter functionality can be explored through running the forth interpreter in /cmake-build-wsl on (most) linux machines. This interpreter is running in shell-mode (originally developed for dynamic testing/debugging of the interpreter).
 
 A note about this repository: Much of the development was done prior to any posting, due to the nature of our group throughout the quarter (poor communication, eventually dwindled etc). The share of commits do not necessarily reflect participation between myself and Bryan.
