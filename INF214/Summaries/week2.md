# Week 2

# Tables and Their Characteristics
- Logical view of relational database is based on relation
    - Relation thought of as a table
- Table: two-dimensional structure composed of rows and columns
    - Persistent representation of logical relation
- Contains group of related entities (entity set)

- A row shows a single entity occurrence within an entity set
- A row is known as a tuple

# Keys
- Each row in a table must be uniquely identifiable
- Key is one or more attributes that determine other attributes
- Key’s role is based on determination
- If you know the value of attribute A, you can determine the value of attribute B
- Functional dependence
– Attribute B is functionally dependent on A if all rows in table that agree in value for A also agree in value for B

### Composite key
 Composed of more than one attribute
 ```
 Propose a composite key for the ID book entity set
 ```
### Key attribute
Any attribute that is part of a key
```    
Name the key attributes of the ID book composite key
```
### Super key
Any key that uniquely identifies each row
### Candidate key
A superkey without unnecessary attributes
```
Propose a super key for ID book that is NOT a candidate key
```
### Foreign key (FK)
An attribute whose values match primary key values in the related table

### Referential integrity
FK contains a value that refers to an existing valid tuple (row) in another relation

### Secondary key
Key used strictly for data retrieval purposes

# Relational Set Operators
### Relational algebra
- Defines theoretical way of manipulating table contents using relational operators
- Use of relational algebra operators on existing relations produces new relations:
    - SELECT 
    - DIFFERENCE
    - PROJECT 
    - JOIN
    - UNION 
    - PRODUCT
    - INTERSECT 
    - DIVIDE
    
#### Select VS Project
PROJECT eliminates columns while SELECT eliminates rows.

#### UNION & INTERSECT
- UNION combines two tables that have the same attributes (takes the rows from both tables and puts them in a new table)
- INTERSECT finds the rows that appear in both tables and puts them
  in the new table
![union_intersect](http://imgur.com/iRmvH1h.jpg)

#### DIFFERENCE & PRODUCT
- Difference gives the rows that appear in one table
  but not in the other
- PRODUCT makes a new table with all
  the attributes from both tables
  
#### Natural Join
- Links tables by selecting rows with common values in common attribute(s)
![natural_join](http://imgur.com/bMnefZF.jpg)

#### Outer join
- Matched pairs are retained, and any unmatched values in other table are left null
![outer_join](http://imgur.com/6LyIr1A.jpg)