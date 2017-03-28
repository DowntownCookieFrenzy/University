<!--
@Author: Thomas Scholtz <thomas>
@Date:   2017-03-28T20:52:22+02:00
@Email:  thomas@quantum-sicarius.za.net
@Last modified by:   thomas
@Last modified time: 2017-03-28T21:30:33+02:00
@License: Attribution-NonCommercial-ShareAlike 4.0 International
-->

# Name the five types of users identified in a database system.
- System administrators
- Database administrators
- Database designers
- Systems analysts and programmers
- End users

# Clearly indicate the difference between a database and a table.
- A table, a logical structure that represents an entity set, is only one of the components of a database.
-  The database is a structure that houses one or more tables and metadata. The metadata are data about data. Metadata include the data (attribute) characteristics and the relationships between the entity sets.

# Indicate what it would imply if a relational database model displays both entity integrity as well as referential integrity.
- Entity integrity describes a condition in which all tuples within a table are uniquely identified by their primary key. The unique value requirement prohibits a null primary key value, because nulls are not unique.
- Referential integrity describes a condition in which a foreign key value has a match in the corresponding table or in which the foreign key value is null. The null foreign key “value” makes it possible not to have a corresponding value, but the matching requirement on values that are not null makes it impossible to have an invalid value.

# Clearly indicate what the concept “surrogate primary key” means within the context of database design.
- A surrogate primary key is an “artificial” PK that is used to uniquely identify each entity occurrence when there is no good natural key available or when the “natural” PK would include multiple attributes.
- A surrogate PK is also used if the natural PK would be a long text variable. The reason for using a surrogate PK is to ensure entity integrity, to simplify application development by making queries simpler, to ensure query efficiency.

# Describe the difference between specialisation and generalisation.
- Specialization is the top-down process of identifying lower-level, more specific entity subtypes from a higher-level entity supertype.
- Specialization is based on grouping unique characteristics and relationships of the subtypes.
- Generalization is the bottom-up process of identifying a higher-level, more generic entity supertype from lower-level entity subtypes.
- Generalization is based on grouping common characteristics and relationships of the subtypes.

# Briefly describe the concept of an entity cluster.
- An entity cluster is a “virtual” entity type used to represent multiple entities and relationships in the ERD.
- An entity cluster is formed by combining multiple interrelated entities into a single abstract entity object.
- An entity cluster is considered “virtual” or “abstract” in the sense that it is not actually an entity in the final ERD.
- It is a temporary entity used to represent multiple entities and relationships, with the purpose of simplifying the ERD and thus enhancing its readability.


# Notation
#### Solid half and solid half - relationship is mandatory.
Each computer must have a hard drive, and one hard drive must be installed into one computer.

#### Dashed half and solid half - relationship is mandatory on the right and optional on the left:
Each computer must have a hard drive, and one hard drive may or may not be installed into one computer. (will be vise verse if right side of the relationship is dashed and the left one is solid )

#### Dashed half and dashed half - relationship is optional.
Each computer may or may not have a hard drive, and one hard drive may or may not be installed into one computer.
