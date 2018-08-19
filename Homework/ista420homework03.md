# Chapter 3, Joins
## ISTA-420, T-SQL Fundamentals
#### Readings
Chapter 3, Pages 103 - 123.
#### Homework questions
###### 1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
For querry purposed

###### 2. Describe in your own words the output from an inner join.


###### 3. Describe in your own words the output from an outer join.


###### 4. Describe in your own words the output from an cross join.


###### 5. A convenient mnemonic for remembering the various joins is "Ohio."" Why is this true?


###### 6. Give an example of a composite join.


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


###### 8. What might be one reason the following query does not return the column custID in this query?
```
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= '20160101';
````
