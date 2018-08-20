# Chapter 3, Joins
## ISTA-420, T-SQL Fundamentals
#### Readings
Chapter 3, Pages 103 - 123.
#### Homework questions
###### 1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
For querry purposes

###### 2. Describe in your own words the output from an inner join.
  The output is the product of table rows minus the filter criteria noted in the join. returns all inner rows with rows that match from outer.

###### 3. Describe in your own words the output from an outer join.
  Returns both inner and outer rows so all rows are shown. To filter rows, must be done in Where Clause

###### 4. Describe in your own words the output from an cross join.
The out put is a product of rows from one table and the other.

###### 5. A convenient mnemonic for remembering the various joins is "Ohio."" Why is this true?
Ohio is bigger in the middle. There is one type of cross join, one type of inner join, but three types of outer joins (left, right, full).

###### 6. Give an example of a composite join.
```
FROM dbo.table1 AS T1
  INNER JOIN dbo.table2 as T2
    ON T1.col1 = T2.col1
    AND T1.col2 = T2.col2
```

###### 7. What is the diference between the following two queries? The business problem is "How many orders do we have from each customer?"
```
================first query===============
 SELECT C.custid, COUNT(*) AS numorders
 FROM Sales.Customers AS C
 LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid
 GROUP BY C.custid;
 ================second query===============
 SELECT C.custid, COUNT(O.orderid) AS numorders
 FROM Sales.Customers AS C
 LEFT OUTER JOIN Sales.Orders AS O ON C.custid = O.custid GROUP BY C.custid;
 ```
 The first includes both outer and inner rows regardless of contents, the second querry ignores the outer rows because they have or could have a NULL value.


###### 8. What might be one reason the following query does not return the column custID in this query?
```
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= '20160101';
````
There may not be an order date that meets the criteria
