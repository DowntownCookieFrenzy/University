public class Main
{
	public static void main(String[] args)
	{
		Node n1 = new Node(14.2);
		Node n2 = new Node(23.1,n1);
		Node n3 = new Node(21.6,n2);
		Node n4 = new Node(11.8,n3);
		Node n5 = new Node(15.3,n4);

		double result = Recursive.sum(n5);
		System.out.println(result);

		/*
		The output should be:
		86.0

		Fitchfork will take the inaccuracies of floating-point arithmetic into account.
		*/
	}
}
