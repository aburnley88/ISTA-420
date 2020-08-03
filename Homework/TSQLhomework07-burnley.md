## Arnold Burnley
## TSQLhomework07-burnley.md
## July 30 2020

TSQL Homework 07
Chapter 7, T-SQL Query Fundamentals
Readings
Read chapter 7 in the T-SQL Query Fundmentals book.
Homework questions


1. What is a window function?

A function that, for each row, computes a scalar result value based on a calculation against a subset of the rows from the underlying query.

2. What does PARTITION do?

The window-partition clause restricts the window to the subset of rows that have the same values in the partitioning columns as in the current row. 

3. What does ORDER BY do?

In a window aggregate function, window ordering supports a frame specification. Window ordering gives meaning to the rank. Order BY is a form of sorting. 

4. What does ROWS BETWEEN do?

A window-frame clause filters a frame, or a subset, of rows from the window partition between the two specified delimiters. 

5. What is a ranking window function? Why would you use it? Give an example.

You use ranking window functions to rank each row with respect to others in the window. 

6. What is an offset window function? Why would you use it? Give an example.

You use offset window functions to return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame. 

7. What do LEAD and LAG DO

The Lag function looks before the current row, and the lead function looks ahead. 

8. What do FIRST VALUE and LAST VALUE do?

You use the FIRST_VALUE and LAST_VALUE functions to return an element from the first and last rows in the window frame, respectively. These functions supprt
window-partition, window-order, and window-frame clauses. 

9. What is an aggragate window function? Why would you use it? Give an example.

An aggregate takes a group of something and outputs one value such as SUM, AVG, COUNT, MAX, MIN

10. What is a pivot table and what does it do?

11. In mathematical theory, what is a power set? How does this definition of power set relate to grouping
sets?
A power set is a 


12. What is a bit array? How can you implement a bit array to represent a set of flags? How does the
GROUPING ID() function implement a bit array?

A bit array is a list of bits. 

13. Read the documentation on the UNIX/Linux chmod command. How would interpret this command:
chmod 755 myscript.sql?

Owner group and world. changing permissions. owner of this file has read write and execute the group has read and execute, the world