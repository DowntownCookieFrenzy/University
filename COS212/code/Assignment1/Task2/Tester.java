public class Tester{
	public static void main(String[] args){
		// CircularList cl = new CircularList();
		// cl.addToFront(1);
		// cl.addToFront(2);	//Fix circularList clone function
		// cl.addToFront(3);
		// cl.addToFront(4);
		// cl.addToFront(5);
		// cl.addToFront(6);
		// cl.addToFront(7);
		// CircularList cl2 = new CircularList();
		// cl2 = cl.clone();
		//
		// System.out.println("list 1: " + cl.toString());
		// System.out.println("list 1: " + cl2.toString());

		// CircularList cl2 = cl.clone();
		//
		// while(cl.deleteFromBack() != -1){
		//
		// }
		// System.out.println("list 1: " + cl.toString());
		// System.out.println("list 2: " + cl2.toString());
		//
		//
		//
		//
		// System.out.println(cl.toString());

		//

		// Stack stack = new Stack();
		// stack.push(1);
		// stack.push(2);
		// stack.push(3);
		// stack.push(4);
		// stack.push(5);
		// stack.push(6);
		// stack.push(7);
		//
		//
		// System.out.println("Tester: " + stack.toString());
		//
		// System.out.println("Pop: " + stack.pop());

		// Queue queue = new Queue();
		// queue.enqueue(1);
		// queue.enqueue(2);
		// queue.enqueue(3);
		// queue.enqueue(4);
		// System.out.println("Expecting " + queue.dequeue());
		// queue.clone();
		// System.out.println(queue.toString());
		//
		// Queue queue2 = new Queue();
		// queue2 = queue.clone();
		// // queue.dequeue();
		// // queue.dequeue();
		// // queue.dequeue();
		// // queue.dequeue();
		// System.out.println("queue2 :" + queue2.toString());

		Deque d = new Deque();
		d.enqueueFront(1);
		d.enqueueFront(2);
		d.enqueueFront(3);
		System.out.println(d.dequeueFront());


		System.out.println(d.toString());


	}
}
