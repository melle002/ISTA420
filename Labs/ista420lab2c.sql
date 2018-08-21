--Michael Eller
--ista420lab2c.sql
--8-20-2018

USE TSQLV4;

--1
SELECT orderid, orderdate, custid, empid from sales.Orders
	where orderdate like N'2015-06-%';

--2
SELECT orderid, orderdate, custid, empid from sales.Orders
	where orderdate = EOMONTH(orderdate);

--3
SELECT firstname, lastname, empid from HR.Employees
	where lastname like	N'%e%e%';

--4
select orderid, sum(qty * unitprice) as totalvalue from sales.OrderDetails
	group by orderid having sum(qty *unitprice) > 10000;
	
--5
select lastname from HR.Employees where lastname 
	collate Latin1_General_CS_AS like N'[abcdefghijklmnopqrstuvwxyz]%';

--6

-- the difference is in the way rows are selected which ends in 9 records returned for the top statement and 4 for the bottom statement.
select empid, count(*) as numorders
	from Sales.Orders
	where orderdate < '20160501'
	group by empid;


select empid, count(*) as numorders
	from Sales.Orders
	group by empid
	having max(orderdate) < '20160501';

--7 
select top 3 shipcountry, avg(freight) as avgfreight 
	from Sales.orders 
	where orderdate like N'2015-%'
	group by shipcountry
	order by avg(freight) desc;

--8 (skipped)

--9 
select empid, firstname, lastname, titleofcourtesy,
	case titleofcourtesy
		when 'Ms.' then 'Female'
		when 'Dr.' then 'Unknown'
		when 'Mr.' then 'Male'
		when 'Mrs.' then 'Female'
		else 'It'
	end as gender
	from HR.Employees;

