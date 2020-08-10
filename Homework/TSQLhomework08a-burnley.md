## Arnold Burnley
## TSQLhomework08a-burnley.md
## July 30th 2020



**Homework questions**

1. When using INSERT, is the list of columns necessary? Why or why not?

Specifying the target column names right after the table name is optional. If you dont specify a value for a cloumn Microsoft SQL Server will
use a default value if one was assigned to the column. If not NULLs are used.

2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do
you not use a subquery?


Yes

3. What is the operand for the INSERT EXEC statement?

EXEC

4. How would you use the INSERT INTO statement?

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

5. What are the parameters to the BULK INSERT statement?

You must specify the target table, the source file, and options.

6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?


7. How do you create a SEQUENCE object?

To create a sequence object, use the CREATE SEQUENCE command.

8. How do you use a SEQUENCE object?

A sequence is a user-defined schema bound object that generates a sequence of numeric values according to the specification with which the sequence was created.
The sequence of numeric values is generated in an ascending or descending order at a defined interval and can be configured to restart (cycle) when exhausted.
Sequences, unlike identity columns, are not associated with specific tables. Applications refer to a sequence object to retrieve its next value.
The relationship between sequences and tables is controlled by the application. User applications can reference a sequence object and coordinate the values across multiple rows and tables.

9. How do you alter a SEQUENCE object?

ALTER SEQUENCE modifies the arguments of an existing sequence object. If the sequence was created with the CACHE option, altering the sequence will recreate the cache.
Sequences are integer values and can be of any data type that returns an integer. The data type cannot be changed by using the ALTER SEQUENCE statement. To change the data type, drop and create the sequence object.

10. What is the difference between DELETE and TRUNCATE?

DELETE is  a standard statement with 2 clauses (FROM, WHERE); only the subset of rows for which the predicate evaluates
to TRUE will be evaluated. The TRUNCATE requires no clauses and is mininmally logged compared to the DELETE statement.


ETE and DROP TABLE?

DROP TABLE deletes an entire table whereas the DELETE is for attributes.
