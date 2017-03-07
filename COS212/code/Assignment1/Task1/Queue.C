#include "Queue.h"


/*
The overloaded stream operator for the Queue class.
If a Queue object is printed and contains the elements 5,4,3 and
2, in this order with 5 being the front element and 2 the last, the
output MUST be in the following format: [5,4,3,2]
There are no white spaces in the string.  You will have to replace this
operator with an appropriate equivalent in your Java code
*/
ostream& operator<<(ostream& os,Queue& c){
	if(c.isEmpty()){
		os << "[]";
		return os;
	}

	Stack *newStack = new Stack();
	while(1){
		int val = c.stack->pop();
		if(val == -1)
			break;
		newStack->push(val);
	}
	os << *newStack;

	Stack *revertStack = new Stack();
	while(1){
		int val = newStack->pop();
		if(val == -1)
			break;
		revertStack->push(val);
	}

	*c.stack = *revertStack;
	delete newStack;
	delete revertStack;


	return os;
}

Queue& Queue::operator=(const Queue& other){
 	*this->stack = *other.stack;
	return *this;
}

Queue::Queue(){
	stack = new Stack();
}

Queue::~Queue(){
	delete stack;
}


void Queue::enqueue(int elem){
	stack->push(elem);
}

int Queue::dequeue(){
	if(isEmpty())
		return -1;

	Stack *newStack = new Stack();
	while(1){
		int val = stack->pop();
		if(val == -1)
			break;
		newStack->push(val);
	}
	int val = newStack->pop();

	Stack *revertStack = new Stack();
	while(1){
		int val = newStack->pop();
		if(val == -1)
			break;
		revertStack->push(val);
	}

	*stack = *revertStack;
	delete newStack;
	delete revertStack;


	return val;
}


bool Queue::isEmpty(){
	return stack->isEmpty();
}

int Queue::front(){
	if(isEmpty())
		return -1;

	Stack *newStack = new Stack();
	while(1){
		int val = stack->pop();
		if(val == -1)
			break;
		newStack->push(val);
	}
	int val = newStack->peek();

	Stack *revertStack = new Stack();
	while(1){
		int val = newStack->pop();
		if(val == -1)
			break;
		revertStack->push(val);
	}

	*stack = *revertStack;
	delete newStack;
	delete revertStack;


	return val;
}
