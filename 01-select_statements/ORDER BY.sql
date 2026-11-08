-- ORDER BY
/*
Syntax
SELECT column_1, column_2
FROM table
ORDER BY column_1 ASC/DESC


*/

-- First: Knowing the customer's table structure or columns

SELECT * FROM customer
ORDER BY first_name DESC;

SELECT store_id,first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

