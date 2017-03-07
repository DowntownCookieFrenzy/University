#include "Stack.h"

ostream& operator<<(ostream& os,Stack& c){ //TODO: Make sure this is what they want.
	// os << *c.list;
	if(c.isEmpty()){
		os << "[]";
		return os;
	}

	Stack *dummy = new Stack();
	*dummy = c;
	os << '[';
	int val = 1;
	while(val != -1){
		val = dummy->pop();
		if(val != -1){
			os << val;
			if(dummy->peek() != -1)
			os << ',';
		}
	}
	os << ']';
	delete dummy;
	return os;
}


Stack& Stack::operator=(const Stack& other){
	*(this->list) = *(other.list);
	return *this;
}



Stack::Stack(){
	list = new CircularList();
}

Stack::~Stack(){
	delete list;
}


void Stack::push(int elem){
	CircularList *newList = new CircularList();
	newList->addToFront(elem);				//Trick here was to format the list correctly as im adding elements

	int val = 0;
	while(val != -1){
		val = list->deleteFromBack();
		if(val != -1)
			newList->addToFront(val);
	}

	delete list;
	list = newList;
}


int Stack::pop(){
	return list->deleteFromBack();
}



int Stack::peek(){
	int val = pop();
	if(val == -1)
		return -1;
	push(val);
	return val;
}


bool Stack::isEmpty(){
	return peek() == -1;
}
