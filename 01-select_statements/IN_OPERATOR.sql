/*
The IN operator
The general syntax is:
	. value IN(option1,option2,...,option_n)

*/


SELECT DISTINCT(amount) FROM payment
ORDER BY amount;

SELECT * FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount IN (0.99,1.98,1.99);

SELECT COUNT(*) FROM payment
WHERE amount NOT IN (0.99,1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John','Jake', 'Julie');

SELECT * FROM customer
WHERE first_name NOT IN ('John','Jake', 'Julie');