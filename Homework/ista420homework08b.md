# Chapter 8b, Data Modiﬁcation
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 8, pages 266 – 287 in the T-SQL Fundamentals book.
#### Homework questions

##### 1. The sales tax rate for a state just changed. How would you update the state sales tax table to reﬂect the changes? Assume that this table has an ID column, an RATE column, and a STATE column.
By using the UPDATE statement |

Update dbo.sales tax table
  Set Rate = New RATE
Where STATE = STATE

##### 2. The Revenue Division has requested that you provide a report on what the actual sales taxes would have been for all orders in the past year, assuming the retroactivity of the new sales tax rate. How would you calculate this?
create a new table with just orders for past year and increase sales tax in in new table

##### 3. Explain how the proprietary assignment update command works.
updates data in a table and assigns values to variables at the same time

##### 4. What is one very important purpose of the MERGE SQL statement? What is ETL (not in book)?
Extract Transform and Load: technique for loading data in a database

##### 5. What are the semantics of MERGE?
MERGE INTO table AS TGT
USING table AS SRC
  ON TGT.column = SRC.column
WHEN MATCHED THEN
  UPDATE SET
    TGT.column = SRC.column
WHEN NOT MATCHED
  INSERT (columns)
  VALUES (SRC.columns;)
##### 6. Write a typical INSERT OUTPUT statement.
INSERT INTO table name
  OUTPUT inserted.item1,,,,
    SELECT values
    FROM TABLE
    WHERE ""
##### 7. Write a typical UPDATE OUTPUT statement.
UPDATE table
  SET eyes = blue
  OUTPUT deleted.eyes AS alias,
        inserted.eyes AS alias
WHERE(condition)

##### 8. Write a typical DELETE OUTPUT statement.
DELET FROM table
  OUTPUT
    deleted.column
WHERE condition
##### 9. Write a typical MERGE OUTPUT statement.
MERGE INTO table AS TGT
USING table AS SRC
  ON column
WHEN MATCHED THEN
  UPDATE SET(TGT.columns = SRC.columns)
WHEN NOT MATCHED THEN
  INSERT(columns)
  VALUES(SRC.columns)
OUTPUT
##### 10. What is nested DML
Data modification using a subquerry
