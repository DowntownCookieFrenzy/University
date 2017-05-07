#include <stdlib.h>
#include <stdio.h>

size_t gcd_rec(size_t a, size_t b){
	/*
	 * So I modified this example from an online source;
	 * It was returning with the call to itself first
	 * and with an else handling the base condition.
	 * 
	 * I feel this is harder to read and also
	 * at the very best obfuscates the tail recursion
	 * ( note : both  examples are optimised to tail recursion )
	 * */
	if(b == 0)
		return a;
	else
		return gcd_rec(b, a%b);
	/*
	 * Consider two values x and y; Such that
	 * x is larger than y.
	 *
	 * x % y would result in x;
	 *
	 * Should a in this case be smaller than y the paremeters are swapped.
	 */
}

size_t gcd(size_t a, size_t b){
	return gcd_rec(a, b);
}

int main(){
	printf("gcd of 4 and 2: %zu\n" ,gcd(4,2));
	printf("gcd of 12 and 32: %zu\n" ,gcd(12,32));

	return 0;
}
