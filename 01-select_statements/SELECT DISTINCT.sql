/*
SELECT DISTINCT
Syntax
SELECT DISTINCT column FROM table

To clarify which column DISTINCT is being applied to, you can also use parenthesis for clarity:
SELECT DISTINCT(column) FROM table
*/
-- Select the unique customers 

SELECT DISTINCT first_name,last_name FROM customer;

SELECT DISTINCT(first_name,last_name) FROM customer;

/* 
I thought I should have the same result with DISTINCT(col1, col2) but it was not the case. 
This helps me to know that DISTINCT is not a function but a line constructor */
