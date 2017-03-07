public class DLList<T extends Comparable<T>> {

	protected DLNode head = null;
	protected DLNode tail = null;

	/*
	This method should create a new node with storing "value" and add it to the end of the list.
	*/
	public void addToHead(T value) {
		DLNode newNode = new DLNode(value);
		// Create a new node.
		if( isEmpty() ){
			head = newNode;
			tail = newNode;
			return;
		}
		newNode.next = head;
		head = newNode;
		newNode.next.prev = head;
	}

	/*
	Inserts an element to the tail of the list.
	*/
	public void addToTail(T value) {
		DLNode node = new DLNode(value);
		// Create a new node.
		if( isEmpty() ){
			head = node;
			tail = head;
			return;
		}

		// If the list has no elements ; add to the first element

		node.next = null;
		node.prev = tail;
		// Set the node's previous values.

		tail.next = node;
		// Set the previous tail's next value.

		tail = node;
		// Finally set the tail
	}


	public void removeHead() throws EmptyListException {
		if( isEmpty() ){
			throw new EmptyListException();
		}

		if(head.next == null){
			tail = null;
			head = null;
			return;
		}

		DLNode tmpNext = head.next;
		head = tmpNext;
		head.prev = null;
	}

	public void removeTail() throws EmptyListException  {
		if( isEmpty() ){
			throw new EmptyListException();
		}

		if(tail.prev == null){
			tail = null;
			head = null;
			return;
		}

		tail = tail.prev;
		tail.next = null;
	}

	public void remove(T value) throws EmptyListException  {
		if( isEmpty() )
			throw new EmptyListException();

		int pos = getPosition(value);
		if( pos == -1 )
			return;
		// Find the value to be removed.

		if( pos == 0 ){
			removeHead();
			return;
			}
		else if ( pos == getCount() -1 ){	// Handle cases where the value is at head or tail.
			removeTail();
			return;
		}

		DLNode node = head;
		DLNode prevNode = head;
		DLNode nextNode = head;
		for( int i = 0 ; i < pos ; i++ ){
			prevNode = node;
			node = node.next;
			nextNode = node.next;
			}

		// Find the value in the list.
		prevNode.next = nextNode;
		nextNode.prev = prevNode;
	}

	public boolean isEmpty() {
		return this.head == null;
	}

	public int getCount() {
		DLNode node = head;
		int count = 0;

		while( node != null ){
			count++;
			node = node.next;
		}
		return count;
	}

	public int getPosition(T value) {
		DLNode node = head;
		int count = 0;

		while( node != null ){
			if( node.value == value )
				return count;

			count++;
			node = node.next;
		}
		return -1;
	}

	public void printList(boolean verbose) {
		DLNode iter = head;
		String out = "";
		if (verbose) {
			out += " H ="+ (head == null ? " null"  : head.getString()) + "\n";
			out += " T =" +(tail == null ? " null"  : tail.getString()) + "\n";
		}
		 else {
			 out += "[";
		 }
		while (iter != null) {
			if (verbose) {
				out += iter.getStringVerbose() + (iter == tail ? "" : "\n");
			} else {
				out += iter.getString();
			}
			iter = iter.next;
		}
		if (!verbose) {
			out += "]";
		}
		System.out.println(out);
	}

	protected class DLNode {
		T value;
		DLNode next = null;
		DLNode prev = null;

		DLNode(T _value) {
			value = _value;
		}

		String getStringVerbose() {
			return " ("+value+", next = "+(next == null ? "null" : next.value)+", prev = "+(prev == null ? "null" : prev.value)+") ";
		}

		String getString() {
			return " ("+value+") ";
		}
	}
}
