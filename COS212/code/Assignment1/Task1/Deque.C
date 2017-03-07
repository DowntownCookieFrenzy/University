#include "Deque.h"

ostream& operator<<(ostream& os,Deque& d){
	os << *d.queue;
	return os;
}

Deque& Deque::operator=(const Deque& other){
	*this->queue = *other.queue;
	return *this;
}

Deque::Deque(){
	queue = new Queue();
}

Deque::~Deque(){
	delete queue;
}

void Deque::enqueueFront(int elem){
	queue->enqueue(elem);
}

void Deque::enqueueBack(int elem){
	CircularList *cl = new CircularList();
	Queue *rq = new Queue();


	int val = 1;
	while(val != -1){
		val = dequeueFront();
		if(val != -1){
			cl->addToFront(val);
		}
	}
	cl->addToFront(elem);


	val = 1;
	while(val != -1){
		val = cl->deleteFromBack();
		if(val != -1){
			rq->enqueue(val);
		}
	}
	*queue = *rq;
	delete cl;
	delete rq;
}

int Deque::dequeueFront(){
	return queue->dequeue();
}


int Deque::dequeueBack(){
	if(isEmpty())
		return -1;

	Queue *tempQueue = new Queue();
	Queue *finalQueue = new Queue();
	Stack *stack = new Stack();


	int val = 1;
	while(val != -1){
		val = dequeueFront();
			if(val != -1){
				stack->push(val);
			}
	}


	val = 1;
	while(val != -1){
		val = stack->pop();
			if(val != -1){
			tempQueue->enqueue(val);
			}
	}
	int retVal = tempQueue->dequeue();

	delete stack;
	stack = new Stack();
	val = 1;
	while(val != -1){
		val = tempQueue->dequeue();
			if(val != -1){
				stack->push(val);
			}
	}

	val = 1;
	while(val != -1){
		val = stack->pop();
			if(val != -1){
			finalQueue->enqueue(val);
			}
	}



	*queue = *finalQueue;
	delete tempQueue;
	delete stack;
	delete finalQueue;
	return retVal;
}


bool Deque::isEmpty(){
	return queue->isEmpty();
}
