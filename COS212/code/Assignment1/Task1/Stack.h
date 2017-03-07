#ifndef STACK_H
#define STACK_H

#include "CircularList.h"
 
 
/*
You have to implement the Stack class so that it
functions like a stack.  Stack objects must only
contain positive integers.
*/

class Stack;

ostream& operator<<(ostream&,Stack&);

class Stack
{
	public:
		/*
		The overloaded stream operator for the Stack class.
		If a Stack object is printed and contains the elements 5,4,3 and 
		2, with 5 being the top element and 2 the bottom, the 
		output MUST be in the following format: [5,4,3,2]
		There are no white spaces in the string.  You will have to replace this 
		operator with an appropriate equivalent in your Java code
		*/
		friend ostream& operator<<(ostream& os,Stack& c);
		
		/*
		The overloaded assignment operator.  You will have to replace this 
		operator with an appropriate equivalent in your Java code
		*/
		Stack& operator=(const Stack& other);
		
		
		/*
		The default construcor.
		*/
		Stack();
		
		/*
		The destructor.
		*/
		~Stack();
		
		/*
		The push function pushes an element onto the stack. 
		Any attempt to push anything other than a positive
		integer should be ignored.
		*/
		void push(int elem);
		
		/*
		The pop function removes and returns the element at
		the top of the stack.  If for whatever reason a
		request for the pop function is invalid, return -1
		as an error code.
		*/
		int pop();
		
		/*
		The peek function returns the element at
		the top of the stack without removing it.  
		If for whatever reason a request for the 
		peek function is invalid, return -1 as an 
		error code.
		*/
		int peek();
		
		/*
		The isEmpty function returns true if the stack
		is empty and false otherwise.
		*/
		bool isEmpty();
		
	private:
		/*
		The elements on the stack must be stored in the
		the circular list.
		*/
		CircularList* list; 
		
};

#endif
