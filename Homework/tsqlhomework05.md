## Name: Arnold Burnley

## FileName: tsqlhomework05.md

## 23 July 2020




### Read chapter 5 in the T-SQL Query Fundamentals book.


### Discussion questions


1. What is a table expression? Can you give a technical definition of a table expression?

A table expression is a named query expression that represents a valid relational table. TSQL supports 4 types of of table
expressions: derived tables, common table expressions,views, and inline table table-valued functions.

A table expression is an expression that returns a table.

2. In what SQL clause are derived tables (table valued subqueries) located?

Derived tables (also known as *table subqueries*) are defined in the FROM clause of an outer query. Theirs cope of existence is the outer query.
As soon as the outer query is finished, the derived table is gone. 


3. Why can you refer to column aliases in an outer query that you defined in an inner table valued
subquery?

You can refer to column aliases in an outer query defined in an inner table because the outer query is querying from the inner table.
From is the first clause to be processed so inner queries are processed first. 

4. What SQL key word defines a common table expression?

The WITH statement

5. When using common table expressions, can a subsequent derived table use a table alias declared in a
preceding table expression?

Yes.

6. Can a main query refer to a previously defined common table expression by multiple aliases?

Yes.

7. In SQL, is a view a durable object?

Yes the view **definition** is stored as an object within the database.

8. In a view, what does WITH CHECK OPTION do? Why is this important?

The purpose of the check option is to prevent modifications throught the view that conflict with the view's filter. This is important because views are
a tool for the database owner and if it is modified unitntentionally or erroneously the tool is compromised and unuseable. 

9. In a view, what does SCHEMABINDING do? Why is this important?

THe SCHEMABINDING binds the schema of referenced objects and columns to the schema of the referencing object. It indicates that referenced objects cannot be
dropped and that it refereced columnscannot be dropped or altered. 

10. What is a table valued function?

Reusable table expressions that support input parameters. 

11. What does the APPLY operator do?

The apply operator operates on two input tables and there are 2 supported types of apply: Cross Apply and Outer Apply. 
Cross Apply is similar to joins in that it combines two tables but with apply the left side is evaluated first, and the right side 
is evaluated per row from the left.  
Outer apply is similar to left join in that its second logical processing phase it preserves the left table. 

12. What are the two forms of the APPLY operator? Give an example of each.

Outer apply and cross apply.

**Outer Apply Example**

select C.custid, A.orderid, A.orderdate
FROM Sales.Customers AS C
Outer Apply
(Select Top(3) Orderid, empid, orderdate, requireddate
FROM Sales.Orders AS O 
WHERE O.custID = C.custid
order by orderdate desc,
orderid desc) AS A;

**Cross Apply Example**

Select C.custid, A.orderid, A.orderdate
FROM Sales.Customers AS C
CROSS Apply
(Select Top(3) Orderid, empid, orderdate, requireddate
FROM Sales.Orders AS O 
WHERE O.custID = C.custid
order by orderdate desc,
orderid desc) AS A;



