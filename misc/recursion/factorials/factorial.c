#include <stdlib.h>
#include <stdio.h>

size_t factorial_rec(size_t number, size_t keep){
	if(number == 1)
		return keep;
	
	keep =  keep * number;
	number--;

	return factorial_rec(number, keep);
}

size_t factorial(size_t number){
	return factorial_rec(number, 1);
}

int main(){
	printf("Factorial 1: %zu\n" , factorial(1));
	printf("Factorial 2: %zu\n" , factorial(2));
	printf("Factorial 3: %zu\n" , factorial(3));
}
