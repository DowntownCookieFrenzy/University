#ifndef QUEUE_H
#define QUEUE_H

#include "Stack.h"
 

/*
You must implement the Queue class so that it 
functions as a queue that contains only positive
integers.
*/

class Queue;

ostream& operator<<(ostream&,Queue&);

class Queue
{
	public:
		/*
		The overloaded stream operator for the Queue class.
		If a Queue object is printed and contains the elements 5,4,3 and 
		2, in this order with 5 being the front element and 2 the last, the 
		output MUST be in the following format: [5,4,3,2]
		There are no white spaces in the string.  You will have to replace this 
		operator with an appropriate equivalent in your Java code
		*/
		friend ostream& operator<<(ostream& os,Queue& c);
		
		/*
		The overloaded assignment operator.  You will have to replace this 
		operator with an appropriate equivalent in your Java code
		*/
		Queue& operator=(const Queue& other);
		
		
		/*
		The default constructor.
		*/
		Queue();
		
		/*
		The destructor.
		*/
		~Queue();
		
		/*
		The enqueue function places the element
		passed in as a parameter into the queue.
		Any attempts to insert anything other than
		a positive integer should be ignored.
		*/
		void enqueue(int elem);
		
		/*
		The dequeue function removes and returns the
		appropriate element from the queue.  If for
		whatever reason an attempt is made to perform
		an invalid operation, return -1 to serve as 
		an error code.
		*/
		int dequeue();
		
		/*
		The isEmpty function returns true if the queue
		is empty and false otherwise.
		*/
		bool isEmpty();
		
		/*
		This function returns but does not remove the
		element at the front of the queue.  Return -1
		to indicate any errors.
		*/
		int front();
		
	private:
		/*
		You must store the Queue object's elements
		in the Stack data member.
		*/
		Stack* stack;
};

#endif
