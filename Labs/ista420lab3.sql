.echo on
.headers on

--Name:Michael Eller
--File:ista420lab3.sql
--Date: 8/21/2018

--1. What is the order number and the date of each order sold by each employee?

select e.employeeid, e.firstname, e.lastname, o.orderid, o.orderdate from employees e join orders o on e.employeeid = o.employeeid order by e.employeeid;

--2. List each territory by region.

select rtrim (r.regiondescription), t.territorydescription from region r join territories t on r.regionid = t.regionid order by r.regiondescription;

--4. For every order on May 5, 1998, how many of each item was ordered, and what was the price of the item?

select s.supplierid, s.companyname, p.productid, p.productname from suppliers s left outer join products p on s.supplierid = p.supplierid order by s.companyname;

--5. For every order on May 5, 1998, how many of each item was ordered giving the name of the item, and what was the price of the item?

select o.orderid, o.orderdate, p.productname, od.productid, od.quantity, od.unitprice, (od.quantity * od.unitprice) as lineitem from orders o join order_details od on o.orderid = od.orderid join products p on od.productid = p.productid where o.orderdate like '1998-05-05' order by o.orderid;

--6. For every order in May, 1998, what was the customer’s name and the shipper’s name?

select c.companyname, s.companyname, o.orderdate, o.shipperid  from customers c join orders o on c.customerid = o.customerid join shippers s on s.shipperid = o.shipperid where orderdate like '1998-05-05';

--7. What is the customer’s name and the employee’s name for every order shipped to France?

select c.companyname, c.contactname, e.firstname  || " " || e.lastname, o.shipcountry from orders o join customers c on o.customerid = c.customerid join employees e on o.employeeid = e.employeeid where o.shipcountry like 'France';

--8. List the products by name that were shipped to Germany

select p.productid, p.productname, o.shipcountry from products p join order_details  od on p.productid = od.productid join orders o on od.orderid = o.orderid where o.shipcountry like'Germany';
