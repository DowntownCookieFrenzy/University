#ifndef CIRCLIST_H
#define CIRCLIST_H

#include <iostream>

using namespace std;

/*
You should implement the CircularList class to be a singly linked
circular list that may contain only positive integers.
You may not modify this file.  It will be overwritten
for marking purposes.
*/

class CircularList;

ostream& operator<<(ostream&,CircularList&);


class CircularList
{
	public:
		/*
		The overloaded stream operator for the CircularList class.
		If a CircularList object is printed and contains the elements 5,4,3 and
		2, in this order with 5 being the first element and 2 the last, the
		output MUST be in the following format: [5,4,3,2]
		There are no white spaces in the string.  You will have to replace this
		operator with an appropriate equivalent in your Java code
		*/
		friend ostream& operator<<(ostream& os,CircularList& c);

		/*
		The overloaded assignment operator.  You will have to replace this
		operator with an appropriate equivalent in your Java code
		*/
		CircularList& operator=(const CircularList& other);

		//CircularList A;
		//CircularList B;

		// A=B


		/*Default constructor*/
		CircularList();

		/*Destructor*/
		~CircularList();

		/*
		The function should add the element passed
		in as a parameter to the front of the list.
		Any attempts to insert anything other than
		a positive integer into the list should be
		ignored.
		*/
		void addToFront(int elem);

		/*
		This function should remove and return the
		element at the back of the list.  If there
		is no such element or it is an ivalid delete
		for whatever reason, then return -1 to serve
		as an "error code".
		*/
		int deleteFromBack();

	private:
		class Node
		{
			public:
				/*
				The constructor should be used to
				initialize the data members of the
				Node object appropriately.
				Leave this constructor as is.
				*/
				Node(int elem, Node* node = 0)
				{
					data = elem;
					next = node;
				}

				int data;//The data contained in the node.
				Node* next;//This node's "next" in the list.
		};

		Node* tail;//A pointer to the last node in the list.
};

#endif
