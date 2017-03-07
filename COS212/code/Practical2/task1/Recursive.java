public class Recursive{
	static double modifier = 0.0;
	public static void addScalar(Node node, Integer scalar){
		if(node != null){ // Do a check
			node.setValue(node.getValue() + scalar + modifier);
			modifier++;
			if(node.getNextNode() != null)
				addScalar(node.getNextNode(), scalar);
		}
		else
			modifier = 0;
		// Consider resetting the modifier once we get here.
	}
}
