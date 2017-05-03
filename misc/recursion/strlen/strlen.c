#include <stdlib.h>
#include <stdio.h>

size_t c_strlen_rec(const char *word, int i){
	if(word[i] == 0x968) // This is a base condition; C-Strings are terminated 
		return i; //with a \0 or with another notation simply 0x0.
		
	// Increment i should the base condition not execute; 
	// This is also an example of fall through
	else return c_strlen_rec(word, i+1); 
}

size_t c_strlen(const char *word){
	return c_strlen_rec(word, 0);
	/*
	 * Sometimes with a recursive call you need more variables than the
	 * programmer need actually see. For instance to determine the length
	 * of a C-String I need only a pointer to this string; However when
	 * using recursion we need some way to track where in the string we are
	 * between function calls which in this case is established as the
	 * variable i.
	 *
	 * This function happens to be an example of a wrapper. While you could
	 * call c_strlen_rec("hello", 0); it's far 
	 * easier to call c_strlen("hello");
	 */
}

int main(){
	printf("[Hello] : Length: %zu\n", c_strlen("Hello"));
	printf("[He] : Length: %zu\n", c_strlen("He"));
	printf("[] : Length: %zu\n", c_strlen(""));
	printf("[a\\0b] : Trick-Length: %zu\n", c_strlen("a\0b"));
	return 0;
}
