#include "CircularList.h"

ostream& operator<<(ostream& os,CircularList& c){
	if( c.tail == NULL ){
		os << "[]";
		return os;
	}

	/*
	 Start iterating at tail->next and iterate until node == tail

	 Conceptually we are treating tail->next as the head.
	*/
	CircularList::Node *node = c.tail->next;
	os << '[';
	while(node != c.tail){
		std::cout << node->data;
		if(node->next != c.tail)
			os << ',';
		node = node->next;
	}
	os << ']';
	return os;
}

CircularList& CircularList::operator=(const CircularList& other){
	if(other.tail == NULL)
		return *this;

	Node *node = other.tail->next;
	this->tail = new Node(other.tail->data);	//lawd
	Node *aNode = this->tail;
	while(node != other.tail){
		if(node->next != other.tail){
			aNode->next = new Node(node->data);
			aNode = aNode->next;
		}

		node = node->next;
	}
	aNode->next = new Node(other.tail->data);
	aNode = aNode->next;
	aNode->next = this->tail;

	return *this;
}


CircularList::CircularList(){
	tail = NULL;
}

CircularList::~CircularList(){
	while(deleteFromBack() != -1){
		//Do nothing
	}
}

void CircularList::addToFront(int elem){
	/*
	Conditions as specified by assignment specification
	*/
	if( elem < 0 )
		return ;
	/*
	If isEmpty returns true ; Allocate a new node and set it's next pointer to itself.
	*/
	if( tail==NULL ){
		tail = new Node(elem);
		tail->next = tail;
	}

	/*
	If the list already has an entry , set tail to the new entry and the new entry to the old tail.
	*/
	Node *old = tail->next;
	tail->next = new Node(elem);
	tail->next->next = old;
}

int CircularList::deleteFromBack(){
	/*
	Conditions as specified by assignment specification
	*/
	if( tail == NULL )
		return -1;


	/*
	If tail is simply pointing to itself.
	*/
	if( tail == tail->next ){
		int val = -1;
		delete tail;
		tail = NULL;
		return val;
	}


	/*
	Find the node which occurs before tail; and set it's next to tail's next;
	Make sure to also set tail equals to this node.
	*/
	Node *node = tail->next;
	while(node->next != tail)
		node = node->next;

	Node *old = tail; // Save the old pointer so we can free it.
	int oldVal = node->data;

	node->next = tail->next;
	tail = node;
	delete old;

	return oldVal;
}
