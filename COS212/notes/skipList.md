# Skiplists
Skiplists are data structures that allow fast search within a ordered sequence of items.

![No Internet](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Skip_list_add_element-en.gif/400px-Skip_list_add_element-en.gif)

## Code
### Pseudo code
```pseudo
make all nodes level 1
j ← 1
while the number of nodes at level j > 1 do
  for each i'th node at level j do
    if i is odd
      if i is not the last node at level j
        randomly choose whether to promote it to level j+1
      else
        do not promote
      end if
    else if i is even and node i-1 was not promoted
      promote it to level j+1
    end if
  repeat
  j ← j + 1
repeat
```

### Java
```Java
/*
 * Java program to implement SkipList
 */
import java.util.Scanner;

/* Class SkipNode */
class SkipNode        
{
    int element;
    SkipNode right;
    SkipNode down;

    /* Constructor */
    public SkipNode(int x)
    {
        this(x, null, null);
    }
    /* Constructor */
    public SkipNode(int x, SkipNode rt, SkipNode dt)
    {
        element = x;
        right = rt;
        down = dt;
    }
}

/* Class SkipList */
class SkipList
{
    private SkipNode header;
    private int infinity;
    private SkipNode bottom = null;
    private SkipNode tail = null;

    /* Constructor */
    public SkipList(int inf)
    {
        infinity = inf;
        bottom = new SkipNode(0);
        bottom.right = bottom.down = bottom;
        tail = new SkipNode(infinity);
        tail.right = tail;
        header = new SkipNode(infinity, tail, bottom);
    }
    /* Function to insert element */
    public void insert(int x)
    {
        SkipNode current = header;
        bottom.element = x;
        while (current != bottom)
        {
            while (current.element < x)
            current = current.right;
            /*  If gap size is 3 or at bottom level and must insert, then promote middle element */
            if (current.down.right.right.element < current.element)
            {
                current.right = new SkipNode(current.element, current.right, current.down.right.right);
                current.element = current.down.right.element;
            }
            else
                current = current.down;
        }
        /* Raise height of skiplist if necessary */
        if (header.right != tail)
            header = new SkipNode(infinity, tail, header);
    }
    /* Function to clear list */
    public void makeEmpty()
    {
        header.right = tail;
        header.down = bottom;
    }
    /* Function to check if empty */
    public boolean isEmpty()
    {
        return header.right == tail && header.down == bottom;
    }
    /* Function to get node at a position */
    private int elementAt(SkipNode t)
    {
        return t == bottom ? 0 : t.element;
    }
    /* Function to print list */
    public void printList()
    {
        System.out.print("\nSkiplist = ");
        SkipNode current = header;
        while( current.down != bottom )
            current = current.down;
        while (current.right != tail )
        {
            System.out.print(current.element +" ");
            current = current.right;
        }
        System.out.println();
    }   
}

/* Class SkipListTest */
public class SkipListTest    
{    
    public static void main(String[] args)
    {            
        Scanner scan = new Scanner(System.in);
        /* Creating object of SkipList */
        SkipList sl = new SkipList(100000000);
        System.out.println("SkipList List Test\n");          
        char ch;
        /*  Perform list operations  */
        do
        {
            System.out.println("\nSkipList List Operations\n");
            System.out.println("1. insert");
            System.out.println("2. check empty");
            System.out.println("3. clear");

            int choice = scan.nextInt();            
            switch (choice)
            {
            case 1 :
                System.out.println("Enter integer element to insert");
                sl.insert( scan.nextInt() );   
                break;                          
            case 2 :
                System.out.println("Empty status = "+ sl.isEmpty());
                break;            
            case 3 :
                System.out.println("List cleared\n");
                sl.makeEmpty();
                break;                         
            default :
                System.out.println("Wrong Entry \n ");
                break;   
            }    
            /*  Display List  */
            sl.printList();
            System.out.println("\nDo you want to continue (Type y or n) \n");
            ch = scan.next().charAt(0);    

        } while (ch == 'Y'|| ch == 'y');               
    }
}
```
