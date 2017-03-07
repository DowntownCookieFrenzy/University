#include "Deque.h"

int main(){
	// CircularList cl;
	// cl.addToFront(1);
	// cl.addToFront(2);
	// cl.addToFront(3);
	// cl.addToFront(4);
	// cl.addToFront(5);
	// cout << "original: " << cl << endl;

	// CircularList cl2;
	// cl2 = cl;
	// cl2.addToFront(7);
	//
	// return 0;

	// exit(0);

	//
	//
	// Stack stack;
	// stack.push(1);
	// cout << stack << endl;
	//
	// stack.push(2);
	// cout << stack << endl;
	//
	// stack.push(3);
	// cout << stack << endl;
	//
	//
	// cout << "Expects: 3||Got: " << stack.pop() << endl;
	// cout << stack << endl;
	// cout <<  "Expects: 2||Got: " << stack.pop() << endl;
	// cout << stack << endl;
	// cout <<  "Expects: 1||Got: " << stack.pop() << endl;
	// cout << stack << endl;



	// Stack *stack = new Stack();
	// stack->push(1);
	// stack->push(2);
	// stack->push(3);
	// cout << *stack << endl;
	//
	// Stack *anotherStack = new Stack();
	// *anotherStack = *stack;
	// anotherStack->push(5);
	// cout << *anotherStack << endl;
	//
	//
	// cout << "Peek : " << anotherStack->peek() << endl;
	// cout << "Popping : " << anotherStack->pop() << endl;
	// cout << *anotherStack << endl;
	// delete anotherStack;
	// delete stack;

	// Queue *queue = new Queue();
	// queue->enqueue(1);
	// queue->enqueue(2);
	// queue->enqueue(3);
	// queue->enqueue(4);
	// cout << *queue << endl;
	// cout << "Expecting 1: " << queue->dequeue() << endl;
	// cout << "Expecting 2: " << queue->dequeue() << endl;
	// cout << *queue << endl;
	// queue->enqueue(5);
	// cout << "Expecting 3: " << queue->dequeue() << endl;
	// cout << *queue << endl;
	// cout << "Front: " << queue->front() << endl;
	//
	// delete queue;


	//DEQUE NOTES
	//enqueFront works;
	//enqueBack works;
	//dequeFront works;
	//
	Deque *deque = new Deque();
	deque->enqueueFront(1);
	deque->enqueueFront(2);
	deque->enqueueFront(3);
	cout << deque->dequeueBack() << endl;

	// deque->dequeueBack();
	// deque->dequeueBack();


	cout << *deque << endl;

	delete deque;

	// sexit(0); //Solves my infinite loop problem;
	return 0;
}
