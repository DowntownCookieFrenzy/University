
public class main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {


       BST bst = new BST();
       Integer[] list1 = new Integer[] {5, 1, 3, 8, 2};
      for (int i = 0; i < list1.length; i++) {

           bst.insert(list1[i]);
       }


    bst.printInorder();

    bst.printPreorder();

    bst.printPostorder();




    //////////////////// Expected Output/////////////////////
                        /* Original PreOrder
                       10 5 3 8 7 9 21 18 16 30 25 24 26 28 27 29 40 35 45
                       Mirror Preorder
                       10 21 30 40 45 35 25 26 28 29 27 24 18 16 5 8 9 7 3
                           */




    }



}
