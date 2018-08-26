# Chapter 6, Set operators
## ISTA-420, T-SQL Fundamentals
#### Readings
Read chapter 6, pages 193 - 204 in the T-SQL Fundamentals book.
Homework questions

##### 1. What does a set operator do?
combine rows from two querry result sets (or multiset). compares complete rows between the results of the two input querries involved.

##### 2. What are the general requirements of a set operator
two input querries. the two input querries cannot have the order by clause and they must return the same number of columns.

##### 3. What is a Venn Diagram? This is not in the book.
 a diagram that shows all possible logical relations between a finite collection of different sets.

##### 4. Draw a Venn Diagram of the UNION operator. What does it do?
Unifies the results of two querries

##### 5. Draw a Venn Diagram of the UNION ALL operator. What does it do?
The UNION ALL unifies the two input querry results without attempting to remove duplicates from the result

##### 6. Draw a Venn Diagram of the INTERSECT operator. What does it do?
returns only the rows that are common to the results of the two input querries

##### 7. If SQL Server supported the INTERSECT ALL operator, what would it do?
return the number of dublicate rows matching the lower of the counts in both input multisets

##### 8. Draw a Venn Diagram of the EXCEPT operator. What does it do?
Operates on the results of two input querries and returns rows that appear in the first input but not the second

##### 9. If SQL Server supported the EXCEPT ALL operator, what would it do?
Would return only occurences of a row from the first multiset that do not have corresponding rows in the second.

##### 10. What is the precedence of the set operators
The INTERSECT operator precedes UNION and EXCEPT and UNION and EXCEPT are evaluated in order of appearance.
