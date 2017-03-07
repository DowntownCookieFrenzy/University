# Recursion

Recursion involves a function repeatedly calling itself until an answer is found.
It is often associated with breaking a problem down into smaller parts
<br>

## Examples

### Factorial
#### Pseudo code
```pseudo
	factorial(n):
		if n is greather than one
			return n * factorial(n - 1)
		else
			return 1
```
#### Java
```Java
int factorial(int n){
    if (n > 1){
        return n*factorial(n-1);
    }
    else {
        return 1;
    }
}
```

___

### Fibonacchi
#### Pseudo code
```pseudo
	fib(n):
	if n is smaller than or equal to 1
		return n;
	else
		return fib(n-1) + fib(n-2)
```
#### Java
```Java
public int fib(int n) {
    if(n <= 1) {
        return n;
    } else {
        return fib(n - 1) + fib(n - 2);
    }
}
```

___

## Backtracking

Backtracking involves 'going back' to solve a particular problem.
Eg If you are driving and get lost you turn back and try to find a road that you remember.

A popular problem solved with backtracking is the N-Queen problem;<br>
This is where you place N queens on a chessboard with NxN slots so that no 2 queens
can attack each other.

<br>![No internet](http://i.imgur.com/O3cGlYv.gif)<br>

### Algorithm Description

* 1. Start on the left side of the board (0,0).
* 2. If all queens are placed return true.
* 3. Try all the rows in the current column.
	* 3.1 Can a queen be safely placed in this row; If so mark the position (row,column)
	  as a solution and check if placing the queen here leads to a solution.
	* 3.2 If it leads to a solution return true.
	* 3.3 Else unmark this position and go back to step 3.1 to try other rows.

The java implementation is stolen from [http://introcs.cs.princeton.edu](http://introcs.cs.princeton.edu/java/23recursion/Queens.java.html)<br>
```Java
/******************************************************************************
 *  Compilation:  javac Queens.java
 *  Execution:    java Queens n
 *  
 *  Solve the 8 queens problem using recursion and backtracing.
 *  Prints out all solutions.
 *
 *  Limitations: works for n <= 25, but slows down considerably
 *  for larger n.
 *
 *  Remark: this program implicitly enumerates all n^n possible
 *  placements (instead of n!), but the backtracing prunes off
 *  most of them, so it's not necessarily worth the extra
 *  complication of enumerating only permutations.
 *
 *
 *  % java Queens 3
 *
 *  % java Queens 4
 *  * Q * *
 *  * * * Q
 *  Q * * *
 *  * * Q *
 *
 *  * * Q *
 *  Q * * *
 *  * * * Q
 *  * Q * *
 *
 *  % java Queens 8
 *  Q * * * * * * *
 *  * * * * Q * * *
 *  * * * * * * * Q
 *  * * * * * Q * *
 *  * * Q * * * * *
 *  * * * * * * Q *
 *  * Q * * * * * *
 *  * * * Q * * * *
 *
 *  ...
 *
 ******************************************************************************/

public class Queens {

   /***************************************************************************
    * Return true if queen placement q[n] does not conflict with
    * other queens q[0] through q[n-1]
    ***************************************************************************/
    public static boolean isConsistent(int[] q, int n) {
        for (int i = 0; i < n; i++) {
            if (q[i] == q[n])             return false;   // same column
            if ((q[i] - q[n]) == (n - i)) return false;   // same major diagonal
            if ((q[n] - q[i]) == (n - i)) return false;   // same minor diagonal
        }
        return true;
    }

   /***************************************************************************
    * Prints n-by-n placement of queens from permutation q in ASCII.
    ***************************************************************************/
    public static void printQueens(int[] q) {
        int n = q.length;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (q[i] == j) StdOut.print("Q ");
                else           StdOut.print("* ");
            }
            StdOut.println();
        }  
        StdOut.println();
    }


   /***************************************************************************
    *  Try all permutations using backtracking
    ***************************************************************************/
    public static void enumerate(int n) {
        int[] a = new int[n];
        enumerate(a, 0);
    }

    public static void enumerate(int[] q, int k) {
        int n = q.length;
        if (k == n) printQueens(q);
        else {
            for (int i = 0; i < n; i++) {
                q[k] = i;
                if (isConsistent(q, k))
			 	enumerate(q, k+1);
            }
        }
    }  


    public static void main(String[] args) {
        int n = Integer.parseInt(args[0]);
        enumerate(n);
    }

}
```
