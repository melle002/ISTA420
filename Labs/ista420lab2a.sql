.echo on
.headers on

-- Name: Michael Eller
-- File Name: Ista420lab2a.sql
-- Date: 14AUG2018

.open nw-150810.db
-- 1. What are the regions?
select * from region;

--2. What are the cities?
select * from territories;

--3. What are the cities in the Southern region?
select distinct territorydescription from territories where regionid = 4;

--4. How do you run this query with the fully qualiﬁed column name?
select distinct territories.territorydescription from territories where territories.regionid = 4;

--5. How do you run this query with a table alias?
select distinct t.territorydescription from territories t where regionid = 4;

--6. What is the contact name, telephone number, and city for each customer?
select contactname, city, phone from customers;

--7. What are the products currently out of stock?
select productname, productname, unitsinstock from products where unitsinstock = 0;

--8. What are the ten products currently in stock with the least amount on hand?
select unitsinstock, productid, productname from products where unitsinstock > 0 order by unitsinstock limit 10;

--9. What are the ﬁve most expensive products in stock?
select productid, productname, unitprice from products where unitsinstock > 0 order by unitprice desc limit 5;

--10. How many products does Northwind have? How many customers? How many suppliers?
select count(*) from products;
select count(*) from suppliers;
select count(*) from customers;
