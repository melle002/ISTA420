# Chapter 7, Beyond the fundamentals of querying
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 7, pages 213 - 230 in the T-SQL Fundmentals book.
#### Homework questions

##### 1. What is a window function?
A function that produces a scalur resilt value based on a calculation against a subset of rows from underlying querry
##### 2. What does PARTITION do?
restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row
##### 3. What does ORDER BY do?
defines ordering
##### 4. What does ROWS BETWEEN do?
filters a frame or subset, of rows from the window partition between the two specified delimiters
##### 5. What is a ranking window function? Why would you use it? Give an example.
function that ranks each row with respect to others in the window.
##### 6. What is an oﬀset window function? Why would you use it? Give an example.
function that return an element from a row that is at a certain offset from the current row or at the beginning or end of a frame.
##### 7. What do LEAD and LAG DO
Lag returns previous values from current and the Lead returns the value of the rows after
##### 8. What do FIRST VALUE and LAST VALUE do?
Return elements from the first row or last row respectively
##### 9. What is an aggragate window function? Why would you use it? Give an example.
window functions that are used to aggragate the rows in the defined window. SUM(val) OVER(PARTITION BY custid)
##### 10. What is a pivot table and what does it do?
A table where data has been rotated from state of rows to columns for presentation purposes
