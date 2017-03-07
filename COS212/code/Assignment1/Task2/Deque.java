public class Deque{
	private Queue queue;

	public String toString(){
		return queue.toString();
	}

	public Deque(){
		queue = new Queue();
	}

	public Deque clone(){
		Deque newD = new Deque();
		newD = clone();
		return newD;
	}

	public void enqueueFront(Integer elem){
		queue.enqueue(elem);
	}

	public void enqueueBack(Integer elem){
		Queue rq = new Queue();
		CircularList cl = new CircularList();


		Integer val = 1;
		while(val != -1){
			val = dequeueFront();
			if(val != -1){
				cl.addToFront(val);
			}
		}
		cl.addToFront(elem);


		Integer value = 1;
		while(value != -1){
			value = cl.deleteFromBack();
			if(value != -1){
				rq.enqueue(value);
			}
		}
		queue = rq.clone();
		cl = null;
		rq = null;
	}

	public Integer dequeueFront(){
		return queue.dequeue();
	}

	public Integer dequeueBack(){
		if(isEmpty())
			return -1;

		Queue tempQueue = new Queue();
		Queue finalQueue = new Queue();
		Stack stack = new Stack();


		Integer val = 1;
		while(val != -1){
			val = dequeueFront();
				if(val != -1){
					stack.push(val);
				}
		}


		val = 1;
		while(val != -1){
			val = stack.pop();
				if(val != -1){
				tempQueue.enqueue(val);
				}
		}
		Integer retVal = tempQueue.dequeue();

		stack = null;
		stack = new Stack();
		val = 1;
		while(val != -1){
			val = tempQueue.dequeue();
				if(val != -1){
					stack.push(val);
				}
		}

		val = 1;
		while(val != -1){
			val = stack.pop();
				if(val != -1){
				finalQueue.enqueue(val);
				}
		}



		queue = finalQueue.clone();
		tempQueue = null;
		stack = null;
		finalQueue = null;
		return retVal;
	}

	public Boolean isEmpty(){
		return queue.isEmpty();
	}

}
