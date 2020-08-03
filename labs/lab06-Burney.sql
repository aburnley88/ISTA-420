-- Name: Arnold Burnley
-- File: lab06-Burnley.sql
-- Date: July 29, 2020


---------------------------------------------------------------------
-- Microsoft SQL Server T-SQL Fundamentals
-- Chapter 06 - Set Operators
-- Exercises
-- � Itzik Ben-Gan 
---------------------------------------------------------------------

-- 1
-- Write a query that returns customer and employee pairs 
-- that had order activity in January 2016 but not in February 2016
-- Tables involved: TSQLV4 database, Orders table

use TSQLV4;


Select o1.custid, o1.empid From Sales.Orders o1 WHERE orderdate between '2016-01-01' and '2016-01-31'
EXCEPT
Select o2.custid, o2.empid From Sales.Orders o2 WHERE orderdate between '2016-02-01' and '2016-02-29';

--Desired output
custid      empid
----------- -----------
1           1
3           3
5           8
5           9
6           9
7           6
9           1
12          2
16          7
17          1
20          7
24          8
25          1
26          3
32          4
38          9
39          3
40          2
41          2
42          2
44          8
47          3
47          4
47          8
49          7
55          2
55          3
56          6
59          8
63          8
64          9
65          3
65          8
66          5
67          5
70          3
71          2
75          1
76          2
76          5
80          1
81          1
81          3
81          4
82          6
84          1
84          3
84          4
88          7
89          4

(50 row(s) affected)

-- 2
-- Write a query that returns customer and employee pairs 
-- that had order activity in both January 2016 and February 2016
-- Tables involved: TSQLV4 database, Orders table

Select o1.custid, o1.empid From Sales.Orders o1 WHERE orderdate between '2016-01-01' and '2016-01-31'
INTERSECT
Select o2.custid, o2.empid From Sales.Orders o2 WHERE orderdate between '2016-02-01' and '2016-02-29';

--Desired output
custid      empid
----------- -----------
20          3
39          9
46          5
67          1
71          4

(5 row(s) affected)

-- 3
-- Write a query that returns customer and employee pairs 
-- that had order activity in both January 2016 and February 2016
-- but not in 2015
-- Tables involved: TSQLV4 database, Orders table

(Select o1.custid, o1.empid From Sales.Orders o1 WHERE orderdate between '2016-01-01' and '2016-01-31'
INTERSECT
Select o2.custid, o2.empid From Sales.Orders o2 WHERE orderdate between '2016-02-01' and '2016-02-29'
)
EXCEPT
Select o3.custid, o3.empid From Sales.Orders o3 WHERE year(O3.orderdate) = '2015'; 

--Desired output
custid      empid
----------- -----------
67          1
46          5

(2 row(s) affected)
