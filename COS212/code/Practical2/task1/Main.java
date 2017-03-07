public class Main
{
	public static void main(String[] args)
	{
		Node n1 = new Node(14.2);
		Node n2 = new Node(23.1,n1);
		Node n3 = new Node(21.6,n2);
		Node n4 = new Node(11.8,n3);
		Node n5 = new Node(15.3,n4);

		Recursive.addScalar(n5,3);

		System.out.println(n5.getValue());
		System.out.println(n4.getValue());
		System.out.println(n3.getValue());
		System.out.println(n2.getValue());
		System.out.println(n1.getValue());
		System.out.println(n1.getNextNode() == null);

		/*
		The output should be:
		18.3
		15.8
		26.6
		29.1
		21.2
		true

		Fitchfork will take the inaccuracies of floating-point arithmetic into account.
		*/
	}
}
