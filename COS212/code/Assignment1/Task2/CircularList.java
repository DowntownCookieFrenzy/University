public class CircularList{
	private Node tail;

	public CircularList(){
		tail = null;
	}

	public String toString(){
		if( tail == null )
			return "[]";

		String buffer = "[";
		Node node = tail.next; // Don't use ->

		while( node != tail ){
			buffer = buffer + node.data;

			node = node.next;
			if(node != tail)
				buffer = buffer + ',';
		}
		buffer = buffer + "]";
		return buffer;
	}

	public CircularList clone(){
		if(this.tail == null)
			return new CircularList();

		CircularList newList = new CircularList();

		Node node = this.tail.next;
		newList.tail = new Node(this.tail.data);	//lawd
		Node aNode =newList.tail;
		while(node != this.tail){
			if(node.next != this.tail){
				aNode.next = new Node(node.data);
				aNode = aNode.next;
			}

			node = node.next;
		}
		aNode.next = new Node(this.tail.data);
		aNode = aNode.next;
		aNode.next =newList.tail;

		return newList;
	}

	public void addToFront(Integer elem){
		if ( elem < 0 )
			return;

		if( tail == null ){
			tail = new Node(elem);
			tail.next = tail;
		}

		Node old = tail.next;
		tail.next = new Node(elem);
		tail.next.next = old;		//lawd
	}

	public Integer deleteFromBack(){
		if( tail == null )
			return -1;

		if( tail == tail.next ){
			Integer val = -1;
			tail = null;
			return val;
		}

		Node node = tail.next;
		while(node.next != tail)
			node = node.next;

		Node old = tail; // Save the old pointer so we can free it.
		Integer oldVal = node.data;

		node.next = tail.next;
		tail = node;
		old = null;

		return oldVal;
	}

	protected class Node{
		Node(Integer elem){
			data = elem;
		}
		public Integer data;
		public Node next;
	}
}
