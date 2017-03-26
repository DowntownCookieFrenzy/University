# Week 5

## The Extended Entity Relationship Model:

In this model we have two entity types;
* Entity supertype: A generic entity with common characteristics which relate to one or more entity subtypes.
* Enttity subtype: Contains unique characteristics of each entity subtype.

## Specialisation Hierarchy:
This hierarchy shows the arrangement of higher/supertype entities compared to lower/subtype entities.
NB Subtype entities only exist in scope of supertypes and every subtype has only one supertype to which it is related.
![WUT](http://i.imgur.com/oJtq0Dc.png)

## Inheritance:
* Subtypes can inherit attributes of supertype.
* Subtypes inherit all relationships of supertype.
* Subtypes inherit supertypes primary key attribute.
* At an implementation level super and subtypes maintain a 1:1 relationship.

### Subtype-Discriminator:
* An entity in the supertype which determines to which entity subtype each supertype occurence is related.
* Default comparison is equality;
* Subtype discriminators may be based on other comparision conditions.

### Disjoint And Overlapping Constraints:
Disjoint types are also called non-overlapping types;
A disjoint type is a subtype that contains a unique subset of a supertype entity set.
<br>
Overlapping substypes are subtypes that contain non-unique subsets of supertype entity sets.
<br>
Thus Disjoint(unique subsets) types are the opposite of Overlapping(non-unique) types.

## Completeness Constraint:
A constraint which we can place on an entity to say whether it is partially complete or totally complete.
![completeness](http://imgur.com/Jt4spRT)
### Partial Completeness:
![partial](http://imgur.com/t3Gzone.png)
Some supertype occurences are not members of any subtype.

### Total Completeness:
![complete](http://imgur.com/l1Ps6jl.png)
Every subtype occurence must be member of at least one subtype.