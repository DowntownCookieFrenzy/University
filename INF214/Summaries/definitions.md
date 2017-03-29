# Definitions
- The term **functional dependence** can be defined most easily this way: the
attribute B is functionally dependent on A if A determines B.
	- More precisely:
	```
	The attribute B is functionally dependent on the attribute A
	if each value in column A determines one and only one value in column B.
	```

- A **candidate key** can be described as a superkey without unnecessary attributes, that is, a minimal superkey.

- Within a table, each **primary key** value must be unique to ensure that each row is uniquely identified by the primary key. In that case, the table is said to exhibit **entity integrity**. To maintain entity integrity,a **null** (that is, no data entry at all) is not permitted in the primary key.

- A **relational schema** is a textual representation
of the database tables where each table is listed by its name followed by the list of its attributes in parentheses.
	- VENDOR (<u>**VEND_CODE**</u>, VEND_CONTACT, VEND_AREACODE, VEND_PHONE)

- In other words, **referential integrity** means that if the foreign key contains a value, that value
refers to an existing valid tuple (row) in another relation.

- Finally, a **secondary key** is defined as a key that is used strictly for data retrieval purposes.
