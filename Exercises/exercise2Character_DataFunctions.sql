.echo on
.headers on


--Name: Michael Eller
--Assignment: Exercise 02 Character and Date Functions
-- Date: 18 AUG 2018

--T-SQL Fundamentals

--1. Mailing Labels From the Northwind database we used in class and SQLite, create mailing labels for customer representatives. Each label should consist of six, and exactly six, lines. The mailing labels should be suitable for printing on sticky label paper, speciﬁcally Avery 8160 labels. The format should be as follows:
--TITLE FIRSTNAME LASTNAME
--COMPANYNAME
--STREET ADDRESS
--CITY STATE ZIP COUNTRY
--[blank line]
--[blank line]
select ContactTitle || " " || ContactName || "" || "
  ...> " || CompanyName || "
  ...> " || Address || "
  ...> " || City || " " || Region || " " || PostalCode || " " || Country || "
  ...> " || "
  ...> " from customers limit 10;

--2. Telephone Book From the Northwind database we used in class and SQLite, create a telephone book for customer representatives. Each line in the telehone book should consist of the representative last name, representative ﬁrst name, company name, and telephone number. Each row should look like this.
--Lastname, Firstname Middlename [tab] Company name [tab] phone number
select substr(contactname, instr(contactname, " " )+1) || ", " || substr(contactname, 1, instr(contactname, ' ')), companyname, phone from customers order by substr(contactname, instr(contactname, " " )+1) limit 10;

--3. Shipping Lag From the Northwind database, create a report from Orders showing the shipping lag between order date and shipped date. The report should contain four columns: the order umber, the order date, the shipped date, and the diﬀerence in days between the order date and the shipped date.
select orderid, orderdate, shippeddate,
       julianday(orderdate)-julianday(shippeddate) as Difference
 from orders limit 10;

--4. Your Age How old are you, in days, today? Use Sqlite to calculate this.
select julianday('now') - julianday('1979-04-22');
