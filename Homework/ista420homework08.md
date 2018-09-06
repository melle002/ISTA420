# Chapter 8a, Data Modiﬁcation
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 8, pages 249 – 266 in the T-SQL Fundamentals book.
#### Homework questions

##### 1. When using INSERT, is the list of columns necessary? Why or why not?
No because it relies on the order of columns in the CREATE TABLE statement. However you control the value columns by specifing the the column names yourself.
##### 2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
A standard Select querry is used. According to the rules I see no reason why you couldn't use a subquerry as well. It depends how indepth or complicated the result needs to be.
##### 3. What is the operand for the INSERT EXEC statement?
@
##### 4. How would you use the INSERT INTO statement?
by stating the table then the columns(optional) and passing the values
##### 5. What are the parameters to the BULK INSERT statement?
taget table, source file, and options
##### 6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
No , define a primary key or use unique constraint columns
##### 7. How do you create a SEQUENCE object?
by using the CREATE SEQUENCE command
##### 8. How do you use a SEQUENCE object?

##### 9. How do you alter a SEQUENCE object?
in the UPDATE statement
##### 10. What is the diﬀerence between DELETE and TRUNCATE?
Truncate is minimally logged and DELETE is fully logged
##### 11. What is the diﬀerence between DELETE and DROP TABLE?
Drop is used to drop a table. DELETE is used to delete data within the table, keeping the Table. 
