public class Recursive{
	public static void mergeSomeNodes(Node node){
		if( node != null ){
			if(node.getValue() < node.getNextNode().getValue()){
				node.setValue(node.getValue() + node.getNextNode().getValue());
				node.setNextNode(node.getNextNode().getNextNode());
				mergeSomeNodes(node.getNextNode());
			}
			else if ( node != null && node.getNextNode()  != null ){
				mergeSomeNodes(node.getNextNode());
			}
		}
	}
}
