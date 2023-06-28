# Printf
For this project we implemented our own printf function, introducing "variadic functions" in C. My printf function handles the following conversions: cspdiuxX% (this might change in the future). 

In `printf`, we pass a string (char *) and whenever the percentage sign pops we send the next argument with its format indicator to our "traffic police", which sends it to the right program (display string/integers/decimals/pointers/hexadecimals/unsigned int...).

KISS(Keep it simple stupid).
That way new formats can be handled and added to ft_printf.c easily in the future. 

To return the length of the total string, (i.e., the length of a pointer adress we pass as an argument, or how many symbols it has), we increment a counter recursively (the variable `idx` in the code). I chose to use recursion instead of loops to avoid memory allocation.
