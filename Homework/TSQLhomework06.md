## Arnold Burnley
## TSQLhomework06.md
##  July 29th 2020






### Homework questions

1. What does a set operator do?

A **set operator** is an operator that combines rows from two query result sets (or multisets). 
TSQL supports the following operators:
* **UNION**
* **UNION ALL**
* **INTERSECT**
* **EXCEPT**

2. What are the general requirements of a set operator

In terms of logical processing, each of the individual qyeries can hae all logical-query processing phases except
for a presentation ORDER BY. A query with an ORDER BY clause returns a cursor and not a multiset which is what a set operator returns. 
The two input queries involved in a set operation must produce results with the same number of columns, and corresponding columns must have compatible data types. 
The names of the columns are determined in the first query. When a set-operator compares rows between inputs it doesnt use an equality operator rather it uses a distinct
predicate. 
 
3. What is a Venn Diagram? This is not in the book.

A diagram representing mathematical or logical sets pictorially as circles or closed curves within an enclosing rectangle (the universal set), 
common elements of the sets being represented by the areas of overlap among the circles.

4. Draw a Venn Diagram of the **UNION** operator. What does it do?

see diagram.

5. Draw a Venn Diagram of the **UNION ALL** operator. What does it do?

see diagram.

6. Draw a Venn Diagram of the **INTERSECT** operator. What does it do?

see diagram

7. If SQL Server supported the **INTERSECT ALL** operator, what would it do?

The keyword all in the **INTERSECT ALL** operator means that duplicate intersections will not be removed. 

8. Draw a Venn Diagram of the EXCEPT operator. What does it do?

see diagram

9. If SQL Server supported the EXCEPT ALL operator, what would it do?

**EXCEPT ALL** returns only occurrences of a row from the first multiset that do not have a corresponding occurrence in the second. 

10. What is the precedence of the set operators?

The **INTERSECT** operator precedes **UNION** and **EXCEPT**, and **UNION** and **EXCEPT** are evaluated in order of appearance. Using the ALL variant doesnt change the precedence. 

11. The symmetric difference of two sets A and B is all elements in A that are also not in A and B, and all
elements of B that are also not in A and B. For example, if set A consisted of all integers between 1 and
100 that are divisible by 2, and set B consisted of all integers between 1 and 100 that are divisible by
3, the symmetric difference of A and B would include all integers in A and B except integers divisible
by both 2 and 3, e.g., 6, 12, 18, etc. Write a SQL query that computes the symmetric difference of two
tables A and B.

A union B

Except

A intersect B



