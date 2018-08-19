# Chapter 02a, Single Table Queries
## T-SQL Fundamentals
#### Readings
Read chapter 2 of the textbook T-SQL Fundamentals, pages 27 through 49.
#### Homework questions
###### 1. List the order of execution of a SQL query.
```
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
```
###### 2. What does the from clause do?
The FROM clause specifies the name of the tables you want to querry and and table operators that operate those tables.

###### 3. What does the where clause do?
The WHERE clause specifies a predicate or logical expression to filter the rows returned by the FROM phrase

###### 4. What does the group by clause do?
The GROUP BY clause arrange the rows returned by the previous logical processing phase in groups.

###### 5. What does the having clause do?
The HAVING clause filters by group.

###### 6. What does the select clause do?
The SELECT clause is where you specify the attributes(columns) you want to return.

###### 7. What does the distinct keyword do?
The DISTINCT keyword handles only distinct occurences of known values.

###### 8. What does the order by clause do?
The ORDER BY clause sorts the results in a user specified manner

###### 9. What does the limit clause do? This is not in the book.
The LIMIT clause limits the number of rows returned

###### 10. What does the top clause do?
The TOP clause limits the number of rows returned

###### 11. What do the oﬀset ...fetch ... clauses do?
The OFFSET.....FETCH clauses are considered an extension to the ORDER BY clause. Returns values in same way as TOP but the offset keyword indicates how many rows to skip while the fetch returns the rows.
