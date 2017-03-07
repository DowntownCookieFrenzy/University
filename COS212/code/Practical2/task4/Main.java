public class Main
{
	public static void main(String[] args)
	{
		Node n1 = new Node(44.2);
		Node n2 = new Node(35.1,n1);
		Node n3 = new Node(21.6,n2);
		Node n4 = new Node(11.8,n3);
		Node n5 = new Node(15.3,n4);

		Recursive.mergeSomeNodes(n5);
		// System.out.println(Recursive.findOffsetFromNode(n4, Recursive.getLargest(n4)));
		//
		System.out.println(n5.getValue());
		Node tmp = n5.getNextNode();
		System.out.println(tmp.getValue());
		tmp = tmp.getNextNode();
		System.out.println(tmp.getValue());
		tmp = tmp.getNextNode();
		System.out.println(tmp == null);
		//
		// /*
		// The output should be:
		// 15.3
		// 56.0
		// 56.7
		// true

		// Fitchfork will take the inaccuracies of floating-point arithmetic into account.
	}
}
