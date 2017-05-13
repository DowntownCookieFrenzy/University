# Cheatsheet For Practicals:

![Cheater](http://www.cheat-sheets.org/saved-copy/sql-server-cheat-sheet.png)

## Things We Obviously Need To Know:

* Use
* Go
* Create
* Insert
* Delete
* Alter
* Join

### Use

Sets the database to use.

```sql
USE work_databasee;
```

### Go

Sends a batch of statements to the server. If it doesn't want to work, try a GO.

### Create

To create a database.

```sql

```

To create a table.

```sql
USE db GO

CREATE TABLE Users(
	ID INT PRIMARY KEY NOT NULL,
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
Please note that because the primary key is not AUTO_INCREMENT
you have to specify the id.

```sql
INSERT INTO artists VALUES (1, 'John Bucket')
```
To insert ( specifying fields )

```sql
INSERT INTO artists (name, id) VALUES ('John Bucket', 1)
```
