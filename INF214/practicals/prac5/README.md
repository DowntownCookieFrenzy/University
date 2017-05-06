# Practical 5

- Use DaspoortClinic.sql

![Expected](http://i.imgur.com/HNpzuwc.png)

## Hints

##### [INNER JOIN]
```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```

##### [GROUP BY and ORDER BY and COUNT]
The following SQL statement lists the number of customers in each country, sorted high to low:
```sql
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
```

##### [ALIAS] (optional?)
```sql
SELECT column_name AS alias_name
FROM table_name;
```


[INNER JOIN]:(https://www.w3schools.com/sql/sql_join_inner.asp)
[GROUP BY and ORDER BY and COUNT]:(https://www.w3schools.com/sql/sql_groupby.asp)
[ALIAS]:(https://www.w3schools.com/sql/sql_alias.asp)

