public class Recursive{
	public static double sum(Node node){
		double val = 0;
		if(node != null){ // Do a check
			val += node.getValue();
			if(node.getNextNode() != null)		// WTF
				val += sum(node.getNextNode());
		}
		return val;
		// Consider resetting the sum when we get here.
	}
}
