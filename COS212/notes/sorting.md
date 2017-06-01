# 9. Sorting

## 9.1 Elementary Sorting Algorithms

### 9.1.1 Insertion Sort (p. 500)

|             | Best | Average | Worst  |
| ----------- | ---- | ------- | ------ |
| Comparisons | O(n) | O(n^2)  | O(n^2) |
| Movements   | O(n) | O(n^2)  | O(n^2) |

- First element is marked as sorted
- Take the next unsorted element and compare it in reverse with the sorted elements

```
50 60 40 100 5 2 15

50 | 60 40 100 5 2 15
50 60 | 40 100 5 2 15
40 50 60 | 100 5 2 15
40 50 60 100 | 5 2 15
5 40 50 60 100 | 2 15
2 5 40 50 60 100 | 15
2 5 15 40 50 60 100 |
```

### 9.1.2 Selection Sort (p. 503)

|             | Best   | Average | Worst  |
| ----------- | ------ | ------- | ------ |
| Comparisons | O(n^2) | O(n^2)  | O(n^2) |
| Movements   | 0      | O(n)    | O(n)   |


- Find the lowest unsorted item and swap with the first unsorted item

```
50 60 40 100 5 2 15

2 | 60 40 100 5 50 15
2 5 | 40 100 60 50 15
2 5 15 | 100 60 50 40
2 5 15 40 | 60 50 100
2 5 15 40 50 | 60 100
2 5 15 40 50 60 | 100
2 5 15 40 50 60 100 |
```
### 9.1.3 Bubble Sort (p. 505)

|             | Best   | Average | Worst  |
| ----------- | ------ | ------- | ------ |
| Comparisons | O(n^2) | O(n^2)  | O(n^2) |
| Movements   | 0      | O(n)    | O(n)   |

- Swap neighbours if they are out of order

```
(Smallest first)

50 60 40 100 5 2 15

2 | 50 60 40 100 5 15
2 5 | 50 60 40 100 15
2 5 15 | 50 60 40 100
2 5 15 40 | 50 60 100
2 5 15 40 50 | 60 100
2 5 15 40 50 60 | 100
2 5 15 40 50 60  100 |
```

### Comb Sort (p. 508)
- Bubble sort improvement
- Compare elements `step` away
- Each pass `step` is made smaller until equal to 1


```
gap = 6

50 60 40 100 5 2 15
15 60 40 100 5 2 50

gap = 3
15 60 40 100 5 2 50
15 5 40 100 60 2 50
15 5 2 100 60 40 50
15 5 2 50 60 40 100

...
```

## 9.3 Efficient Sorting Algorithms (p. 512)
### 9.3.1 Shell Sort (p. 512)
- Divide data into `h` arrays
- Sort each sub array
- Decrease the number of sub arrays
- Continue until we have sorted a single array

<details>
<summary>Example</summary>

```
Using h = i + 1, i++ for the gaps for simple example
Recommended: 1, 4, 13, 40...

Sub array count = 3
101 50 60 49 45 55 30 20 15
A   B  C  A  B  C  A  B  C

Sort each sub array using any elementary algorithm.
Sort A:
101 49 30
30 49 101

Sort B:
50 45 20
20 45 50

Sort C:
60 55 15
15 55 60

Data:
30 20 15 49 45 55 101 50 60

Decrease the gap
Sub array count = 2
30 20 15 49 45 55 101 50 60
A  B  A  B  A  B  A   B  A

Repeat until we have one array.
Sort the single array
```

</details>

### 9.3.2 Heap Sort (p. 515)
- Uses a heap for sorting
- Largest element will be root.
- Take element and place at back of array.
- Rebuild the heap, exluding the sorted elements at the back

<details>
<summary>Example (p. 518)</summary>

```
Initial Data:
2 8 6 1 10 15 3 12 11

Construct max heap:
15 12 6 11 10 2 3 1 8

Swap first and last elements:
8 12 6 11 10 2 3 1 | 15

Rebuild heap:
12 11 6 8 10 2 3 1 | 15

Swap first and last:
1 11 6 8 10 2 3 | 12 15

Rebuild:
11 10 6 8 1 2 3 | 12 15

Repeat...
```

</details>

### 9.3.3 Quick Sort (p. 520)
- Choose a pivot
- Move all data smaller than the pivot to the left sub array
- Move all data larger to the right of the pivot
- Repeat for left and right sub array until array length of 2
- See example on p. 521 for algorithm implementation

### 9.3.4 Merge Sort (p. 526)
- Split array in two
- Repeat until we have arrays of size 1
- Merge and sort the arrays, as we went down

### 9.3.5 Radix Sort (p. 529)
- For integers, create buckets 0 to 9
- Factor = 1
- Divide number by factor and mod by 10
- Place number in bucket according the the value produced by x / factor % 10
- Remove numbers from bucket in order they were inserted
- Esentially comparing each digit starting from the right


### 9.3.6 Counting Sort (p. 533)
- Value in data is used as the index in the `count` array
- For each data element seen, increment the value in `count`
- Make `count` cumalative
- The value in `count` now represents the index in `tmp`
- Read the data elements:
    - Get the value from the count array => `x`
    - Set `tmp[x] = data[i]`
    - Decrement the counter for `data[i]`
- See textbook
