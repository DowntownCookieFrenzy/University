# Week 1

# The Database and the DBMS
- Database: shared, integrated computer structure that stores a collection of data
    - End-user data: raw facts of interest to the end user
    - DBMS integrates many users’ views of the data
    - Metadata: data about data 
- Metadata provides description of data characteristics and relationships in data
    - Complements and expands value of data

Database management system (DBMS): collection of programs Manage structure and control access to data

# Advantages of the DBMS
- Improved data sharing
- Improved data security
- Better data integration
- Minimized data inconsistency
- Improved data access
- Improved decision making
- Increased end-user productivity

# Data Modeling and Data Models
#### Data models
- Relatively simple representations of complex real-world data structures
- Often graphical
#### Model: 
- an abstraction of a real-world object or event
- Useful in understanding complexities of the real-world environment

# The Relational Model
- Table (relations)
    - Matrix consisting of row/column intersections
    - Each row in a relation is called a tuple
- Relational models were considered impractical in 1970
- Model was conceptually simple at expense of computer overhead

- Relational data management system (RDBMS)
    - Hides complexity from the user
- Relational diagram
    - Representation of entities, attributes, and relationships
- Relational table stores collection of related entities

# The Entity Relationship Model
- Widely accepted standard for data modeling
- Introduced by Chen in 1976
- Graphical representation of entities and their relationships in a database structure
- Entity relationship diagram (ERD)
    - Uses graphic representations to model database components
    - Entity is mapped to a relational table
    
 ![week1_erm](http://imgur.com/i0Q0gR6.png)
 
# The External Model
- End users’ view of the data environment
- ER diagrams represent external views
- External schema: specific representation of an external view
    - Entities
    - Relationships
    - Processes
    - Constraints

- Easy to identify specific data required to support each business unit’s operations
- Facilitates designer’s job by providing feedback about the model’s adequacy
- Ensures security constraints in database design
- Simplifies application program development

# The Conceptual Model
- Represents global view of the entire database
- All external views integrated into single global view: conceptual schema
- ER model most widely used
- ERD graphically represents the conceptual schema

![conecptual_model](http://imgur.com/xHKI6dc.png)

# The Internal Model
- Representation of the database as “seen” by the DBMS
    - Maps the conceptual model to the DBMS
- Internal schema depicts a specific representation of an internal model
- Depends on specific database software
    – Change in DBMS software requires internal model be changed
- Logical independence: change internal model without affecting conceptual model

![internal_model](http://imgur.com/RDrSFr9.png)

# The Physical Model
- Operates at lowest level of abstraction
    - Describes the way data are saved on storage media such as disks or tapes
- Requires the definition of physical storage and data access methods
- Relational model aimed at logical level
    - Does not require physical-level details
- Physical independence: changes in physical model do not affect internal model