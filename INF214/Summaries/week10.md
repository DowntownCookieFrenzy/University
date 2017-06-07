# Week 10

## Relationships

     - Nonspecific relationship; Many instances of an entity are related to many instances of another entity. (M:M relationship) Resolved by adding an associative entity.


## What Is A Good Data Model

     - Simple; Attributes that describe any given entity should descript only that entity. Each attribute of an entity instance can have only one value.
     - Non-Redundant; Each data attribute other than foreign keys, describe at most one entity.
     - Flexible And Adaptable; Grows as required. Can accept variations of data record. Refers to the capacity of records to increase in number.


## Data Analysis

A technique used to improve a data model for implementation as a database. Again the goal is a simple, Non-Redundant, flexible and Adaptable database.


## Normalization

A technique used by data analysts which organises data into groups of Non-Redundant, stable ,flexible and adaptive entities.

## A Modern Data Architecture

Data is stored in a combination of:
- Files
- Operational Database; Supports day to day operations and transactions for an information system. Also called a transactional database.
- Data Warehouse; Stores data extracted from an operational database.
- Personal Databases
- Work Group Databases


## A Model For Database Design

- Review the logical Model.
- Create a table for each entity.
- Create fields for each attribute.
- Create index for each primary & secondary key.
- Create index for each sub criterion.
- Designate foreign keys for relationships.
- Define types, null settings, domains and defaults for attributes.
- Create or combine tables to implement super/sub type structures.
- Evaluate/specific referential integrity constraints.

## Database schema

A model or blueprint representing the technical implementation of the database and is also called a physical database model.

## Database integrity

- Key integrity; Every table has a primary key.
- Domain Integrity; Appropriate controls must be designed to ensure that no fields take on an inappropriate value.
- Referential Integrity; The assurance that a foreign key value in one table has a matching primary key value in the related table. These errors are prevented by no restrictions, cascading- , restricting- and set null deletes.
