# Chapter 9, Temporal tables
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 9, pages 297 - 313 in the T-SQL Fundmentals book.
#### Homework questions

##### 1. What is a temporal table?
Tables that hold history of data modification

##### 2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
accidental deletion or updating

##### 3. What are the semantics of a temporal table? There are seven of them.
```
1. Aprimary key
2. two columns with not noll contraints and Datetime2 datatypes
3. A start column with the option " GENERATED ALWAYS AS ROW START"
4. An end column with the option "GENERATED ALWAYS AS ROW END"
5. A designation of period columns with the option PERIOD FOR SYSTEM_TIME(<statcol>, <endcol>)
6. The table option SYSTEM_VERSIONING, which should be set on
7. A linked history table to hold the past states of modified rows.
```

##### 4. How do you search a history table?
You querry as normal but you add a clause called FOR SYSTEM_TIME and a subclause that indicates the validity point or period of time you want

##### 5. How do you modify a history table?
BY using the INSERT, UPDATE, DELETE, and the MERGE statements. TRUNCATE is not supported on temporal Tables

##### 6. How do you delete date from a history table? Why would you want to delete data from a history table?
By uing the DELETE statements
because the data is no longer needed and to free up space(database management)

##### 7. How do you search a history table?
You querry as normal but you add a clause called FOR SYSTEM_TIME and a subclause that indicates the validity point or period of time you want

##### 8. How do you query all data from both a history ﬁle and the current data?
By explicityly naming all columns and using a FOR SYSTEM_TIME all clause

##### 9. How do you drop a temporal table?
Same as you would for any table
