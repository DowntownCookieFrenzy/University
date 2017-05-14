# Cheatsheet For Practicals:

![Cheater](http://www.cheat-sheets.org/saved-copy/sql-server-cheat-sheet.png)

## Things We Obviously Need To Know:

* Use
* Go
* Create
* Insert
* Delete
* Join
* Select

### Use

Sets the database to use.

```sql
USE work_databasee;
```

### Go

Sends a batch of statements to the server. If it doesn't want to work, try a GO.

### Create

#### Database

```sql
USE master;
GO
CREATE DATABASE Sales
ON
( NAME = Sales_dat,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\saledat.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5 )
LOG ON
( NAME = Sales_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\salelog.ldf',
    SIZE = 5MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 5MB ) ;
GO
```


#### Table

- `IDENTITY(1,1)` - Start at ID `1`, increment by `1`
    - If not given then the the ID needs to be specified when inserting

```sql
USE db GO

CREATE TABLE Users(
	ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	NAME VARCHAR(20) NOT NULL,
	SALARY DECIMAL(18, 2)
)
GO
```

To create more tables and a foreign key.

```sql
CREATE TABLE artists (
  id    INTEGER PRIMARY KEY,
  name  TEXT
)

CREATE TABLE tracks (
  traid     INTEGER,
  title   TEXT,
  artist INTEGER,
  FOREIGN KEY(artist) REFERENCES artists(id)
)
```


### Insert

To insert ( basic )

- If `IDENTIY(1,1)` is not specified with the `PRIMARY KEY` constraint then the ID needs to be specified when inserting


```sql
INSERT INTO artists VALUES (1, 'John Bucket')
```
To insert ( specifying fields )

```sql
INSERT INTO artists (name, id) VALUES ('John Bucket', 10)
```

To insert ( foreign keys )

```sql
INSERT INTO tracks VALUES (1, 'someTitle', 10)
```

### Delete

Deletion occurs with conditions.

```sql
DELETE FROM artist WHERE id = 1
```

Multiple conditions and string comparisons.

```sql
DELETE FROM artists where id = 9 OR name LIKE 'John Bucket'
```

Wildcards

```sql
WHERE Name LIKE 'a%' ==> a*
WHERE Name LIKE '%a' ==> *a
WHERE Name LIKE '%or%' ==> *or*
WHERE NAME LIKE '_r%' ==> ?r*
```


### Select

Select operates on tables and conditions

```sql
SELECT * FROM artists
SELECT * FROM artists WHERE id=1
SELECT name FROM artists WHERE id=2
```

Select with tables as alias
```sql
SELECT a.name FROM artists AS a
SELECT a.name, t.title FROM artists AS a, tracks AS t
```

### Join

Join has slightly more theory than all the rest.

![Joins](https://www.codeproject.com/KB/database/Visual_SQL_Joins/Visual_SQL_JOINS_orig.jpg)

Inner join;

This statement selects all users which take a particular course.
```sql
SELECT user.name, course.name
FROM user
INNER JOIN course ON user.course = course.id;
```

Left join;

This statement selects all users which are registered even if they do not 
have a particular course ( zero courses too ).

```sql
SELECT user.name, course.name
FROM user
LEFT JOIN course ON user.course = course.id;
```

Right join;

Selects all the courses even if nobody enrolled for them.

```sql
SELECT user.name, course.name
FROM user
RIGHT JOIN course ON user.course = course.id;
```

Outer join;

Selects all records in both tables even if there is no match, if this
case occurs the missing side will contain NULL. There is no outer join in
mysql but it can be worked around by abusing UNION on a LEFT and RIGHT JOIN

```sql
SELECT user.name, course.name
FROM user
LEFT JOIN course on user.course = course.id

UNION

SELECT user.name, course.name
FROM user
RIGHT JOIN course on user.course = course.id;
```
