public class Recursive{
	public static void mergeSomeNodes(Node node){
		if(node != null){
			Node largest = getLargest(node);
			node.setValue(node.getValue() + largest.getValue());
			Node previous = findNodePrev(node,largest);
			if(previous != null)
				previous.setNextNode(largest.getNextNode());
			mergeSomeNodes(node.getNextNode());
		}
	}

	// 8,10,12,6,7, 15
	public static Node getLargest(Node node){
		if(node.getNextNode() != null){
			if(node.getValue() < node.getNextNode().getValue())
				return getLargest(node.getNextNode());
			else
				return node;
		}
		return node;
	}

	public static Node findNodePrev(Node node,Node findNode){
		Node old = node;

		while(node != null){
			if(node == findNode)
				return old;

			old = node;
			node = node.getNextNode();
		}
		return null;
	}

}
