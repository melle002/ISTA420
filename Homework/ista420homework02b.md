# ->Chapter 02b, Single Table Queries<- 
### T-SQL Fundamentals
#### 1. Readings
Read chapter 2 of the textbook T-SQL Fundamentals, pages 49 through 73.

#### 2. Homework Questions
##### 1. What is a data type? Why do we have data types?
A storage type/parameter. We have data types in order to optimize storage/performance.
##### 2. What is a collation? Name four elements of a collation.
A collation is a property of character data that encapsulates several aspects. Language support, sort order, and case sensitivity.
##### 3. How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”.
By using the RTRIM and LTRIM functions:
````
SELECT RTRIM(LTRIM(' Dave ')
````
##### 4. Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.
````
SELECT Institute
FROM college
WHERE Institute like N'college%' AND like N'university%';
````
##### 5. How would you ﬁnd out the index of the ﬁrst space in a string? For example, the index of the ﬁrst space in “Barack Hussein Obama” would be 7.
````
SELECT CHARINDEX(' ','Barack Hussein Obama');
````
##### 6. How would you select just the ﬁrst name in a list of the presidents. Each record looks like the: ”George Washington”, ”John Adams”. First names can be an arbitrary length, from “Cal” to “Benjamin.” (e.g., Cal College, Benjamin Harrison)
````
SELECT SUBSTRING(fullname,1,CHARINDEX(' ',fullname)- 1) AS first name FROM table;
````
##### 7. What is the order of precedence for the logical operators?
	1. Parentheses
	2. Multiplication, Division, Modulo
	3. Positive, Negative, Addition, Concentration, Subtraction
	4. Comparison operators
	5. NOT
	6. AND
	7. BETWEEN, IN, LIKE, OR
	8. Assignment

###### 8. What is the order of precedence for the math operators?
	1. Parentheses
	2. Multiplication, Division, Modulo
	3. Positive, Negative, Addition, Concentration, Subtraction
	4. Comparison operators
	5. NOT
	6. AND
	7. BETWEEN, IN, LIKE, OR
	8. Assignment

###### 9. What is the diﬀerence between a simple and a searched CASE expression?
The searched CASE expression is more flexible in that you can specify predicates in the WHEN clauses rather than being restricted to using equality comparisons.
###### 10. How would you turn a list of names like this: “LASTNAME, FIRSTNAME”, to a list like this: “FIRSTNAME LASTNAME”?
````
SELECT
	SUBSTRING(name, 1, CHARINDEX(' ', name)) + 1 AS Firstname,
	SUBSTRING(name, 1, CHARINDEX(',', name)) - 1 AS Lastname
FROM table;
````
###### 11. How would you turn a list of names like this: “FIRSTNAME LASTNAME”, to a list like this: “LASTNAME, FIRSTNAME”?
````
SELECT
	SUBSTRING(name, 1, CHARINDEX(' ', name)) - 1 AS Lastname,
	SUBSTRING(name, 1, CHARINDEX(' ', name)) + 1 AS Firstname,
	REPLACE('Firstname Lastname', ' '' ',')
FROM table;
````
