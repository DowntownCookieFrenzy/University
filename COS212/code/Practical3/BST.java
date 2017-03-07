//Name: Connor Armand du Plooy
//Student Number: 16169532
class Node<T> {
  public int value;
  public Node left;
  public Node right;
  public Node(int value) {
    this.value = value;
  }

}
public class BST {
  public Node root;
  public BST insert(int value) {
    Node node = new Node<>(value);
   if (root == null) {
    root = node;
   return this;
    }
 insertRec(root, node);
 return this;
  }

  private void insertRec(Node latestRoot, Node node) {
    if (latestRoot.value > node.value) {
      if (latestRoot.left == null) {
          latestRoot.left = node;
    return;
  } else {
    insertRec(latestRoot.left, node);
   }
  } else {
   if (latestRoot.right == null) {
    latestRoot.right = node;
     return;
    } else {
       insertRec(latestRoot.right, node);
     }
  }
  }

  public BST insert_rev(int value) {
    Node node = new Node<>(value);
   if (root == null) {
    root = node;
   return this;
    }
 insertRec_rev(root, node);
 return this;
  }

  private void insertRec_rev(Node latestRoot, Node node) {
    if (latestRoot.value < node.value) {
      if (latestRoot.left == null) {
          latestRoot.left = node;
    return;
  } else {
    insertRec_rev(latestRoot.left, node);
   }
  } else {
   if (latestRoot.right == null) {
    latestRoot.right = node;
     return;
    } else {
       insertRec_rev(latestRoot.right, node);
     }
  }
  }

 // You Code for In-Order..... You should System.out.println(); to print your output
   public void printInorder() {
	   	System.out.println("Original InOrder");
	   	printInOrderRec(root);
		System.out.print('\n');
		System.out.println("Mirror Inorder");
		BST bst2 = mirror(root);
		printInOrderRec(bst2.root);
		System.out.print('\n');
        }


   private void printInOrderRec(Node currRoot) {
	   	if(currRoot != null){
			printInOrderRec(currRoot.left);
			System.out.print(currRoot.value);
			System.out.print(" ");
			printInOrderRec(currRoot.right);
		}
        }

// You Code for PreOrder .... You should System.out.println(); to print your output
   public void printPreorder() {
	   System.out.println("Original PreOrder");
	   printPreOrderRec(root);
	   System.out.print('\n');
   	   System.out.println("Mirror Preorder");
   	   BST bst2 = mirror(root);
   	   printPreOrderRec(bst2.root);
   	   System.out.print('\n');
        }

   private void printPreOrderRec(Node currRoot) {
	   if(currRoot != null){
		   System.out.print(currRoot.value);
		   System.out.print(" ");
		   printPreOrderRec(currRoot.left);
		   printPreOrderRec(currRoot.right);
	   }
       }
// You Code for PostOrder .... You should System.out.println(); to print your output
   public void printPostorder() {
	   System.out.println("Original PostOrder");
	   printPostOrderRec(root);
	   System.out.print('\n');
	   System.out.println("Mirror Postorder");
   	   BST bst2 = mirror(root);
   	   printPostOrderRec(bst2.root);
   	   System.out.print('\n');
       }

   private void printPostOrderRec(Node currRoot) {
	   if(currRoot != null){
		printPostOrderRec(currRoot.left);
		printPostOrderRec(currRoot.right);
		System.out.print(currRoot.value);
		System.out.print(" ");
		}
       }


// Your code for Mirror .... You should System.out.println(); to print your output
       public Node mirrorTree(Node root){
	  	BST bst = new BST();
		mirrorTree_rec(root,bst);
	     return bst.root;
	 }
	 public BST mirror(Node root){
		 BST bst = new BST();
 		 mirrorTree_rec(root,bst);
		 return bst;
	 }

	  private void mirrorTree_rec(Node currRoot,BST bst){
		  if(currRoot != null){
			bst.insert_rev(currRoot.value);
  			mirrorTree_rec(currRoot.left,bst);
  			mirrorTree_rec(currRoot.right,bst);
  		}
	  }



}
