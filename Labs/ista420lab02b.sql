
.echo on
.headers on

-- Name: Michael Eller
-- File: ista420lab02b

-- 1. Who are our customers in North America?

select customerid, companyname, country from customers where country in ("USA", "Mexico", "Canada");

--2. What orders were placed in April, 1998?

select orderid, orderdate from orders where orderdate like '1998-04-%';
--3. What sauces do we sell?

select productid, productname from products where productname like "%sauce%";

--4. You sell some kind of dried fruit that I liked very much. What is its name?

select productid, productname from products where productname like "%dried%";

--5. What employees ship products to Germany in December?
select employeeid, orderdate, shipcountry from orders where orderdate like "%-12-%" and shipcountry like "%Germany%";
--6. We have an issue with product 19. I need to know the total amount and the net amount of all orders for product 19 where the customer took a discount.
select orderid, productid, unitprice, quantity, (unitprice * quantity) as totalamount, discount from order_details where productid = 19 and discount > 0;
--7. I need a list of employees by title, ﬁrst name, and last name, with the employee’s position under their names, and a line separating each employee.
select titleofcourtesy || "" || firstname || "" || lastname || "" || "
   " || title|| "
    "from employees;
--8. I need a list of our customers and the ﬁrst name only of the customer representative.
select companyname, substr(contactname, 1, instr(contactname, ' ')) as first from customers;
--9. Give me a list of our customer contacts alphabetically by last name.
select substr(contactname, instr(contactname, " " )+1) || ", " || substr(contactname, 1, instr(contactname, ' ')) from customers order by substr(contactname, instr(contactname, " " )+1) ;
--10. ‘I need a report telling me the most common pairing of customers and employees with the greatest order volume (by the number of orders placed). Exclude pairings with minimal orders.
sqlite> select customerid, employeeid, count(orderid) as velocity from orders group by customerid, employeeid having velocity > 4 order by velocity desc;
--11. I need a report listing the highest average selling product by product id. The average is determined by the total sales of each product id divided by the quantity of the product sold. Include only the highest 20 products
select productid, ((count(productid) * unitprice)/quantity) as average, quantity from order_details group by productid order by average desc limit 20;
