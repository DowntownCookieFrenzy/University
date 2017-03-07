/*
*We gave you a main file to test you code. How nice are we?
*/
public class Main {
	public static void main(String[] args){
		DLList<Integer> list = new DLList<Integer>();
		list.addToHead(1);
		list.addToHead(2);

		list.printList(true);

	}

	public static void main1(String[] args) {
		//Make a list
		DLList<Integer> list = new DLList<Integer>();
		//Insert some elements at the tail
		for (int k = 5; k < 10; k++) {
			list.addToTail(k);
		}
		list.printList(true);

		//Insert some elements at the head
		for (int k = 4; k >= 0; k--) {
			list.addToHead(k);
		}
		list.printList(true);




		//Find the position of some elements
		for (int k = 0; k < 11; k++) {
			System.out.println("Value "+k+" is at position "+list.getPosition(k));
		}



		//Remove elements from the front
		for (int k = 0; k < 2; k++) {
			System.out.println("Removing: "+k);
			list.removeHead();
			list.printList(true);
		}

		// Correct up and to here


		//Remove elements by value
		for (int k = 3; k < 6; k++) {
			System.out.println("Removing: "+k);
			list.remove(k);
			list.printList(true);
		}


		//Remove elements from the back
		for (int k = 9; k >=8; k--) {
			System.out.println("Removing: "+k);
			list.removeTail();
			list.printList(true);
		}


		list.printList(false);
		//Test the count and isEmpty functions
		System.out.println("Count: "+list.getCount());
		System.out.println("Is Empty?: "+list.isEmpty());

		/*
			Usage of the self-organizing list in Task 2
		*/
		//Make the list
		// System.out.println("\n\n\n______________________________________________________________________________________");

		SOList<Integer> soList = new SOList<Integer>();

		for (int k = 0; k < 5; k++) {
			soList.access(k);
		}
		soList.printList(false);

		System.out.println("Accessing 4..");
		soList.access(4);
		soList.printList(true);

		System.out.println("Accessing 0..");
		soList.access(0);
		soList.printList(true);

		System.out.println("Accessing 1..");
		soList.access(1);
		soList.printList(true);

		System.out.println("Accessing 3..");
		soList.access(3);
		soList.printList(true);



		/*
			Below, you will find the expected output for the code above.
			NOTE: These simple test cases are only intended to give you an idea of whether you are on the right track or not.
			If your code gives all the output below correctly, that does not necessarily mean that you will receive good marks.
			There might be some cases that are not tested by the code here, but are tested by Fitchfork.
			It is thus very important that once you get the output below, you also come up with your own test cases to make sure that all possible edge cases are covered.
			******************************************
			Expected output for doubly linked list
			******************************************
			 H = (5)
			 T = (9)
			 (5, next = 6, prev = null)
			 (6, next = 7, prev = 5)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Value 0 is at position 0
			Value 1 is at position 1
			Value 2 is at position 2
			Value 3 is at position 3
			Value 4 is at position 4
			Value 5 is at position 5
			Value 6 is at position 6
			Value 7 is at position 7
			Value 8 is at position 8
			Value 9 is at position 9
			Value 10 is at position -1
			Removing: 0
			 H = (1)
			 T = (9)
			 (1, next = 2, prev = null)
			 (2, next = 3, prev = 1)
			 (3, next = 4, prev = 2)
			 (4, next = 5, prev = 3)
			 (5, next = 6, prev = 4)
			 (6, next = 7, prev = 5)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Removing: 1
			 H = (2)
			 T = (9)
			 (2, next = 3, prev = null)
			 (3, next = 4, prev = 2)
			 (4, next = 5, prev = 3)
			 (5, next = 6, prev = 4)
			 (6, next = 7, prev = 5)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Removing: 3
			 H = (2)
			 T = (9)
			 (2, next = 4, prev = null)
			 (4, next = 5, prev = 2)
			 (5, next = 6, prev = 4)
			 (6, next = 7, prev = 5)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Removing: 4
			 H = (2)
			 T = (9)
			 (2, next = 5, prev = null)
			 (5, next = 6, prev = 2)
			 (6, next = 7, prev = 5)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Removing: 5
			 H = (2)
			 T = (9)
			 (2, next = 6, prev = null)
			 (6, next = 7, prev = 2)
			 (7, next = 8, prev = 6)
			 (8, next = 9, prev = 7)
			 (9, next = null, prev = 8)
			Removing: 9
			 H = (2)
			 T = (8)
			 (2, next = 6, prev = null)
			 (6, next = 7, prev = 2)
			 (7, next = 8, prev = 6)
			 (8, next = null, prev = 7)
			Removing: 8
			 H = (2)
			 T = (7)
			 (2, next = 6, prev = null)
			 (6, next = 7, prev = 2)
			 (7, next = null, prev = 6)
			[ (2)  (6)  (7) ]
			Count: 3
			Is Empty?: false

			******************************************
			Expected output for the SOList code
			******************************************
				< (0)  (1)  (2)  (3)  (4) >
			Accessing 4..
			 H = (4)
			 T = (3)
			 (4, next = 0, prev = null)
			 (0, next = 1, prev = 4)
			 (1, next = 2, prev = 0)
			 (2, next = 3, prev = 1)
			 (3, next = null, prev = 2)
			Accessing 0..
			 H = (0)
			 T = (3)
			 (0, next = 4, prev = null)
			 (4, next = 1, prev = 0)
			 (1, next = 2, prev = 4)
			 (2, next = 3, prev = 1)
			 (3, next = null, prev = 2)
			Accessing 1..
			 H = (1)
			 T = (3)
			 (1, next = 0, prev = null)
			 (0, next = 4, prev = 1)
			 (4, next = 2, prev = 0)
			 (2, next = 3, prev = 4)
			 (3, next = null, prev = 2)
			Accessing 3..
			 H = (3)
			 T = (2)
			 (3, next = 1, prev = null)
			 (1, next = 0, prev = 3)
			 (0, next = 4, prev = 1)
			 (4, next = 2, prev = 0)
			 (2, next = null, prev = 4)
		*/

	}


}
