#include <stdlib.h>
#include <stdio.h>

short strcmp_rec(const char *word, const char *another){
	if( word[0] == 0 && another[0] == 0 )
		return 0;
	if( word[0] > another[0] )
		return -1;
	else if( word[0] < another[0] )
		return 1;
	else
		return strcmp_rec(++word, ++another);
}

short c_str_cmp(const char *word, const char *another){
	return strcmp_rec(word, another);
}

int main(){
	printf("Comparing [Hello]||[Hello]: %i\n", c_str_cmp("Hello", "Hello"));
	printf("Comparing [Hello]||[Hel]: %i\n", c_str_cmp("Hello", "Hel"));
	printf("Comparing [lelel]||[eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeek]: %i\n", 
			c_str_cmp("lelel", "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeek"));
	printf("Comparing [a]||[b]: %i\n", c_str_cmp("a","b"));

	return 0;
}
