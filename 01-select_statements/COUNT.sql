/*
SELECT COUNT(*) FROM table
COUNT is also usefull when combined with another commands like DISTINCT
*/

SELECT * FROM payment;

-- Counting the number of amount.(This returns the total row in the table)
SELECT COUNT(amount) FROM payment;

-- Retrieve distinct amount
SELECT DISTINCT(amount) FROM payment;

-- Count distinct amount
SELECT COUNT(DISTINCT(amount)) FROM payment;


