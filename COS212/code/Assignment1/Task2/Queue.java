public class Queue{
	private Stack stack;
	public Queue(){
		stack = new Stack();
	}

	public String toString(){
		if(isEmpty())
			return "[]";

		Stack newStack = new Stack();
		while(true){
			Integer val = stack.pop();
			if(val == -1)
				break;
			newStack.push(val);
		}

		String buffer = newStack.toString();

		Stack revertStack = new Stack();
		while(true){
			Integer value = newStack.pop();
			if(value == -1)
				break;
			revertStack.push(value);
		}

		stack = revertStack.clone();
		newStack = null;
		revertStack = null;

		return buffer;
	}

	public Queue clone(){
		Queue newQueue = new Queue();
		newQueue.stack = stack.clone();
		return newQueue;
	}

	public void enqueue(Integer elem){
		stack.push(elem);
	}

	public Integer dequeue(){
		if(isEmpty())
			return -1;

		Stack newStack = new Stack();
		while(true){
			Integer val = stack.pop();
			if(val == -1)
				break;
			newStack.push(val);
		}
		int val = newStack.pop();

		Stack revertStack = new Stack();
		while(true){
			Integer value = newStack.pop();
			if(value == -1)
				break;
			revertStack.push(value);
		}

		stack = revertStack.clone();
		newStack = null;
		revertStack = null;


		return val;
	}

	public Boolean isEmpty(){
		return stack.isEmpty();
	}

	public Integer front(){
		if(isEmpty())
			return -1;

		Stack newStack = new Stack();
		while(true){
			Integer val = stack.pop();
			if(val == -1)
				break;
			newStack.push(val);
		}
		Integer val = newStack.peek();

		Stack revertStack = new Stack();
		while(true){
			Integer value = newStack.pop();
			if(value == -1)
				break;
			revertStack.push(value);
		}

		stack = revertStack.clone();
		newStack = null;
		revertStack = null;


		return val;
	}
}
