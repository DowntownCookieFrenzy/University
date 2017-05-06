# B-Trees

## Properties

A B-Tree of order `m` - each node can contain `m-1` keys and have `m` children.

Leaf nodes need to contain atleast `ceil([m-1]/2)` keys

### Number of keys in best case (Maximum)
![img](https://latex.codecogs.com/gif.latex?n%20%3D%20m%5E%7Bh&plus;1%7D-1)
```tex
n = number of keys
m = order of tree (each node can have m children, m - 1 keys)
h = height of tree
```

### Number of keys in worst case (Minimum)
![img](https://latex.codecogs.com/gif.latex?n%20%5Cgeq%202%20q%5E%7Bh-1%7D%20-%201)
```tex
n = number of keys
q = smallest allowable number of references per nonroot node ceil(m/2)
h = heigh of tree
```

### Best Case Height (full tree)
The best case height for a tree is ![img](https://wikimedia.org/api/rest_v1/media/math/render/svg/17b32cc6930af2019e3c12f213bbcf111090895e)

# B*-Tree

- Leaf nodes need to contain atleast `ceil( (2m-1)/3 )` keys
- Delay splitting by sharing keys with siblings (Recall Assignment 3) 

