
SELECT * FROM customer;

SELECT * FROM customer
WHERE first_name ='Jared';

SELECT * FROM film;

-- Using comparison operators
SELECT * FROM film
WHERE rental_rate > 4;

-- Combining comparison operators with logical operators
SELECT * FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99;

SELECT * FROM film
WHERE rental_rate > 4 
AND replacement_cost >= 19.99
AND rating='R';

-- Using count function
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 
AND replacement_cost >= 19.99
AND rating='R';

SELECT * FROM film
WHERE rating = 'R' OR rating = 'PG-13';


