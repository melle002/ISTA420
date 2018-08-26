# Chapter 5, Table expressions
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 5, pages 161 – 183 in the T-SQL Fundamentals book.
#### Discussion questions


##### 1. What is a table expression? Can you give a technical deﬁnition of a table expression?
A named Querry expression that represents a valid relational table

##### 2. In what SQL clause are derived tables (table valued subqueries) located?
The FROM clause

##### 3. Why can you refer to column aliases in an outer query that you deﬁned in an inner table valued subquery?
Because it is refering to a table with the aliases as column names. After the inner querry the outside querry only sees a table with column names not aliases.

##### 4. What SQL key word deﬁnes a common table expression?
WITH Statement

##### 5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
yes

##### 6. Can a main query refer to a previously deﬁned common table expression by multiple aliases?
yes

##### 7. In SQL, is a view a durable object?
yes

##### 8. In a view, what does WITH CHECK OPTION do? Why is this important?
prevents modifications that conflict with a views filter. If sata is updated through the view then that information won't show up anymore because it doesn't meet the veiw's criteria

##### 9. In a view, what does SCHEMABINDING do? Why is this important?
it binds the schema of referenced objects and columns to the schema of the referecing object. It keeps you from altering refered objects.

##### 10. What is a table valued function?
reusable table expressions that support input parameters and, for the most part, are similar to views.

##### 11. What does the APPLY operator do?
operates on two input tables


##### 12. What are the two forms of the APPLY operator? Give an example of each.
CROSS APPLY, OUTER APPLY
```
SELECT C.custid, A.orderid, A.orderdate
FROM Sales.Customers AS C
  CROSS APPLY
    (SELECT TOP (3) orderid, empid, orderdate, requiredate
    FROM Sales.Orders AS O
    WHERE O.custid = C.custid
    ORDER BY orderdate DESC, orderid DESC) AS A:

    SELECT C.custid, A.orderid, A.orderdate
    FROM Sales.Customers AS C
      OUTER APPLY
        (SELECT TOP (3) orderid, empid, orderdate, requiredate
        FROM Sales.Orders AS O
        WHERE O.custid = C.custid
        ORDER BY orderdate DESC, orderid DESC) AS A:
```
