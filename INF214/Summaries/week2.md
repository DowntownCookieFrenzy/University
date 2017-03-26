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
