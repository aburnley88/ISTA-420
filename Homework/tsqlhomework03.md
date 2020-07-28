#Arnold Burnley
##TSQLhomework03
###July 15th, 2020


TSQL Homework 03
Chapter 3, T-SQL Query Fundamentals
Readings
Read Chapter 3 T-SQL Query Fundamentals.
Homework questions

1. In general, why would you even want to join two (or more) tables together? This is a good time to
think about the nature of relational algebra.

You may want to take data from 2 tables combine it into 1 table and create a graph to create a visual representation
of the relationship between the data.

2. Describe in your own words the output from an inner join.

The output of inner joins is all matching values of 2 tables filtered through a join condition.

3. Describe in your own words the output from an outer join.

The output of an outer joins is all matching values of two tables filtered by a join condition, but depending on if it is a Left or Right
the data could return non matching values.

4. Describe in your own words the output from an cross join.
A cross join is all the rows times all of the rows of 2 tables.

5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?

One type of cross join and type of inner join, 3 types of inner joins

6. Give an example of a composite join.

A composite join is where you need to match multiple attributes from each side.. You usually need such a join
when a primary key-foreign key relationship is based more than one attribute.

7. What is the difference between the following two queries? The business problem is “How many orders
do we have from each customer?”
================first query===============
SELECT C.custid, COUNT() AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;
================second query===============
SELECT C.custid, COUNT(O.orderid) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;

The first one only counts customer IDs and matches it with orders with matching custID and it returned CustomerIDs with
no matching orders as well.

8. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= ’20160101’;


Because of the left outer join. If there are no customerids or no matching ids then it wont return custID.
