# Chapter 4, Subqueries
## ISTA-420, T-SQL Fundamentals
#### Readings
Read pages, Chapter 4, 133 - 149 in the T-SQL Fundamentals book.
#### Homework questions
###### 1. In your own words, what is a subquery?
A subquerry is a querry with in a querry that the querry that houses it depends on

###### 2. In your own words, what is a self contained subquery?
A querry that is with in it's own scope. Can be run independently.

###### 3. In your own words, what is a correlated subquery?
Subquerries that require information from the outer querry in order to execute. Cannot be run independently because it is dependent.

###### 4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
```
SELECT orderid
FROM Sales.Orders
Where empid =
    (SELECT E.empid
      FROM HR.Employees AS E
      WHERE E. lastname LIKE N'C%');')

```
Assuming only one employee is present with the last name starting as "C". If more than one then error will be generated.

###### 5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
```
SELECT orderid
FROM Sales.Orders
Where empid IN
    (SELECT E.empid
      FROM HR.Employees AS E
      WHERE E. lastname LIKE N'C%');')
```
Using IN instead of = allows for multiple values
###### 6. Give an example of a subquery that returns table values. When would you use this kind of subquery?
```
SELECT custid, companyname
FROM Sales.Customers AS C
WHERE country = N'Spain'
AND EXISTS
  (SELECT * FROM Sales.Orders AS O
    WHERE O.custid = C.custid);
```
As often as needed.
###### 7. What does the exists predicate do? Give an example.
Accepts a subquery as input and returns True if the subquery returns any rows and False otherwise.

###### 8. What happens if we use the not operator before a predicate? Give an example.
gives opposite value
```
SELECT custid, companyname
FROM Sales.Customers AS C
WHERE country = N'Spain'
AND NOT EXISTS
  (SELECT * FROM Sales.Orders AS O
    WHERE O.custid = C.custid);
```

###### 9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
two values. Uses two-valued logic

###### 10. How would you a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.

```
select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as LineTotal, (select round((od.unitprice * od.quantity * 100) / sum(od1.unitprice * od1.quantity), 2) from order_details od1 where od1.orderid = od.orderid) as PctOfTotalOrder from order_details od limit 10;
```
