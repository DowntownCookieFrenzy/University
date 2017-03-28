# Week 4
# Relationships
![l](https://wcs.smartdraw.com/entity-relationship-diagram/img/information-engineering-style.jpg?bn=1510011089)
- Association between entities
- Participants are entities that participate in a relationship
- Relationships between entities always operate in both directions
- Relationship can be classified as 1:M
- Relationship classification is difficult to establish if only one side of the relationship is known

# Existence Dependence
### Existence dependence
- Entity exists in database only when it is associated with another related entity occurrence
### Existence independence
- Entity can exist apart from one or more related entities
- Sometimes such an entity is referred to as a strong or regular entity

# Weak (non-identifying) relationships

![weak](http://imgur.com/SkdbCmv.jpg)

# Strong (identifying) relationships
![strong](http://imgur.com/Jvn02a2.jpg)

# Weak Entities
![weak_entitties](http://imgur.com/bDccru5.jpg)

# Relationship Participation
### Optional participation
One entity occurrence does not require corresponding entity occurrence in particular relationship

### Mandatory participation
One entity occurrence requires corresponding entity occurrence in particular relationship

### Crows foot notation
![crows_foot](http://imgur.com/BG1ySqa.jpg)

# Relationship Degree
### Unary relationship
Association is maintained within single entity
### Binary relationship
Two entities are associated
### Ternary relationship
Three entities are associated

![relationship_degree](http://imgur.com/O5xfXCj.png)

# Recursive Relationships
Relationship can exist between occurrences of the same entity set
![recursive_relationship](http://imgur.com/LxgDpX4.png)

# Associative (Composite) Entities
Also known as bridge entities
- Used to implement M:N relationships
- Composed of primary keys of each of the entities to be connected
- May also contain additional attributes that play no role in connective process

# Simplified process to follow
1. Find the entities (‘things’ on which data is stored) Note: Nouns indicate entities, underline them {Persons, places, objects, events, concepts}
    - Identify synonyms
    - Names are represented in singular terms
2. How are entities related? What are the relationships between the entities?
    - Create ERD Segments
    - Combine ERD Segments
3. Determine the cardinality (by default Crow’s foot notation)
