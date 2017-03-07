# Binary Trees
A binary tree is a tree data structure in which each node has at most two children, which are referred to as the left child and the right child.

## Example
![No connection](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Binary_tree.svg/192px-Binary_tree.svg.png)

A labeled binary tree of size 9 and height 3, with a root node whose value is 2. The above tree is unbalanced and not sorted.

## Types of binary Trees
### Full binary tree
A full binary tree (sometimes referred to as a proper or plane binary tree) is a tree in which every node in the tree has either 0 or 2 children.

![No connection](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Full_binary.pdf/page1-220px-Full_binary.pdf.jpg)
### Complete binary tree
In a complete binary tree every level, except possibly the last, is completely filled, and all nodes in the last level are as far left as possible

![No connection](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Complete_binary.pdf/page1-220px-Complete_binary.pdf.jpg)

## Traversal
### breadth-first
breadth-first starts at the tree root and explores the neighbor nodes first, before moving to the next level neighbors.
This can be implemented as:
- top-down
- left-to-right
- right-to-left

![No connection](https://upload.wikimedia.org/wikipedia/commons/4/46/Animated_BFS.gif)

Implementation of this type of traversal is easy if a queue is used. After a node is visited, its children, if any, are placed at the end of the queue, and the node at the beginning of the queue is visited.

#### Code
```java
public void breadthFirst() {
  BSTNode<T> p = root;
  Queue<BSTNode<T>> queue = new Queue<BSTNode<T>>();

  if(p != null) {
    queue.enqueue(p);
    while (!queue.isEmpty()) {
      p = queue.dequeue();
      // Arbitrary term for doing something with the node.
      visit(p);
      if(p.left != null)
        queue.enqueue(p.left);
      if(p.right != null)
        queue.enqueue(p.right);
    }
  }
}
```
### depth-first
One starts at the root and explores as far as possible along each branch before backtracking. We repeat this process until all nodes are visited. This does however not specify what is considered as a visit: Before proceeding down the tree or after backing up?

- V: Visiting a node
- L: Traversing the left subtree
- R: Traversing the right subtree

Considering the move is always left-to-right and the attention is focused on the first column we have three standard types of traversal:
- VLR: Preorder
- LVR: Inorder
- LRV: Postorder

#### Code
```java
protected void preorder(BSTNode<T> p) {
  if(p != null) {
    visit(p);
    preorder(p.left);
    preorder(p.right);
  }
}

protected void inorder(BSTNode<T> p) {
  if(p != null) {
    inorder(p.left);
    visit(p);
    inorder(p.right);
  }
}

protected void postorder(BSTNode<T> p) {
  if(p != null) {
    postorder(p.left);
    postorder(p.right);
    visit(p);
  }
}
```

## stackless depth-first traversal
### Threaded Trees
A threaded binary tree is a binary tree variant that allows fast traversal: given a pointer to a node in a threaded tree, it is possible to cheaply find its in-order successor (and/or predecessor).

It is more efficient to incorporate the stack as part of the tree. This is done by incorporating ***threads*** in a given node. Threads are references to the predecessor and the successor according to the inorder traversal.

In trees, left or right references and references are children, but they can also be used as references to predecessors and successors, thereby being overloaded with meaning. To distinguish these meanings, a new data field has to be used to indicate the current meaning of the references. (eg. hasSuccessor)

A threaded tree, with the special threading links shown by dashed arrows.

![No connection](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Threaded_tree.svg/220px-Threaded_tree.svg.png)

#### Code
```java
// Threaded tree node
public class ThreadedTreeNode<T extends Comparable<? super T>> {
  protected T el;
  protected boolean hasSuccessor;
  protected ThreadedTreeNode<T> left, right;
  public ThreadedTreeNode() {
    left = right = null;
    hasSuccessor = false;
  }

  public ThreadedTreeNode(T el) {
    this(el,null,null);
  }

  public ThreadedTreeNode(T el, ThreadedTreeNode<T> l, ThreadedTreeNode<T> r) {
    this.el = el;
    left = 1;
    right = r;
    hasSuccessor = false;
  }
}

// Threaded tree
public class ThreadedTree<T extends Comparable<? super T>> {
  private ThreadedTreeNode<T> root;
  public ThreadedTree() {
    root = null;
  }

  protected void visit(ThreadedTree<T> p) {
    System.out.print(p.el + " ");
  }

  protected void inorder() {
    ThreadedTreeNode<T> prev, p = root;
    if (p != null) {
      while(p.left != null) { // go to the leftmost node.
        p = p.left;
      }
      while(p != null) {
        visit(p);
        prev = p;
        p = p.right;
        if (p != null && !prev.hasSuccessor) {
          while (p.left != null) // go to leftmost node.
            p = p.left;
        }
      }
    }
  }
}
```
