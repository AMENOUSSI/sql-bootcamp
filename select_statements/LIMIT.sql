-- LIMIT
/*
Syntax
SELECT column_1, column_2
FROM table
ORDER BY column_1 ASC/DESC
LIMIT


*/


SELECT * FROM payment
ORDER BY payment_date ASC
LIMIT 5;

SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date ASC
LIMIT 1;


