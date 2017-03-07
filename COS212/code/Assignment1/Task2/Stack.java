public class Stack{
	private CircularList list;

	public Stack(){
			list = new CircularList();
			return;
	}

	public String toString(){
		if(isEmpty())
			return "[]";

		String buffer = "[";

		Stack dummy = new Stack();
		dummy = clone();

		Integer val = 1;
		while(val != -1){
			val = dummy.pop();
			if(val != -1){
				buffer = buffer + val;
			}
			if(dummy.peek() != -1)
				buffer = buffer + ",";
		}
		buffer = buffer + "]";
		return buffer;
	}


	public Stack clone(){
		Stack newStack = new Stack();
		newStack.list = list.clone();
		return newStack;
	}

	public void push(Integer elem){
		CircularList newList = new CircularList();
		newList.addToFront(elem);				//Trick here was to format the list correctly as im adding elements

		int val = 0;
		while(val != -1){
			val = list.deleteFromBack();
			if(val != -1)
				newList.addToFront(val);
		}

		list = newList;
	}

	public Integer pop(){
		return list.deleteFromBack();
	}

	public Integer peek(){
		Integer val = pop();
		if(val == -1)
			return -1;
		push(val);
		return val;
	}

	public Boolean isEmpty(){
		return peek() == -1;
	}
}
