.echo on
.headers on

--NAME: Michael Eller
--File: exercise3Joins_Subquerries.sql
--DATE: 8/21/2018


--1. Using SQLite and the Northwind database, create a line item report that contains a line for each product in the order with the following columns: the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of that line item constitutes of the total amount of the order.
select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as LineTotal, (select round((od.unitprice * od.quantity * 100) / sum(od1.unitprice * od1.quantity), 2) from order_details od1 where od1.orderid = od.orderid) as PctOfTotalOrder from order_details od limit 10;

--2. I want to know the unique (distinct) cities, regions, and postal codes: (a) where we have both customers and employees, (b) where we have customers but no employees AND both customers ad employees, and (c) where we have employees but no customers AND both customers and employees. Write three queries, using inner and outer joins. Report the results of the queries. There is no need for any further reporting
--Answer a:
select distinct e.city, e.region, e.postalcode from employees e join customers c on c.city = e.city;

--Answer b:
select city, region, postalcode from employees
except
select city, region, postalcode (select city, region, postalcode from customers;

--Answer c:

--3. Using subqueries, create a report that lists the ten most expensive products.


--4. Using subqueries, create a report that shows the date of the last order by all employees.


--5. Using subqueries, create a line item report that contains a line for each product in the order with the following columns: the order id, the product id, the unit price, the quantity sold, the line item price, and the percent of that line item constitutes of the total amount of the order
select od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as LineTotal, (select round((od.unitprice * od.quantity * 100) / sum(od1.unitprice * od1.quantity), 2) from order_details od1 where od1.orderid = od.orderid) as PctOfTotalOrder from order_details od limit 10;
