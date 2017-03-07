#ifndef DEQUE_H
#define DEQUE_H

#include "Queue.h"

/*
You must implement the Deque class so that it
functions as a double ended queue that contains positive
integers.  A double ended queue is a queue
that supports enqueue and dequeue operations at
both ends of the structure.
*/

class Deque;

ostream& operator<<(ostream&,Deque&);

class Deque
{
	public:
		/*
		The overloaded stream operator for the Deque class.
		If a Deque object is printed and contains the elements 5,4,3 and
		2, in this order with 5 being the front element and 2 the last, the
		output MUST be in the following format: [5,4,3,2]
		There are no white spaces in the string.  You will have to replace this
		operator with an appropriate equivalent in your Java code
		*/
		friend ostream& operator<<(ostream& os,Deque& c);

		/*
		The overloaded assignment operator.  You will have to replace this
		operator with an appropriate equivalent in your Java code
		*/
		Deque& operator=(const Deque& other);

		/*
		The default constructor.
		*/
		Deque();

		/*
		The destructor.
		*/
		~Deque();

		/*
		This function adds the element passed
		as a parameter to the front of the queue.
		Any attempt to insert anything invalid
		should be ignored.
		*/
		void enqueueFront(int elem);

		/*
		This function adds the element passed
		as a parameter to the back of the queue.
		Any attempt to insert anything invalid
		should be ignored.
		*/
		void enqueueBack(int elem);

		/*
		This function removes and returns the
		element at the front of the queue. If
		there is no such element or the operation
		is invalid, return -1 to serve as an
		error code.
		*/
		int dequeueFront();

		/*
		This function removes and returns the
		element at the back of the queue. If
		there is no such element or the operation
		is invalid, return -1 to serve as an
		error code.
		*/
		int dequeueBack();

		/*
		This function returns true if the queue is
		empty, and false otherwise.
		*/
		bool isEmpty();

	private:
		/*
		You must store the Deque object's elements
		in the Queue data member.
		*/
		Queue* queue;


};

#endif
