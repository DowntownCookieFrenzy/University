public class Node
{
	private double value;
	private Node next = null;
	
	public Node(double _value)
	{
		value = _value;
	}
	
	public Node(double _value, Node _next)
	{
		value = _value;
		next = _next;
	}
	
	public double getValue()
	{
		return value;
	}
	
	public void setValue(double _value)
	{
		value = _value;
	}
	
	public Node getNextNode()
	{
		return next;
	}
	
	public void setNextNode(Node _next)
	{
		next = _next;
	}
}
