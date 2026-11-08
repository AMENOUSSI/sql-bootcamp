-- LIMIT
/*
Challenge no.1
What are the customer ids of the first 10 customers who created a payment?
*/

-- Here's my script
SELECT customer_id FROM payment
WHERE amount != 0.00
LIMIT 10;

-- The correction
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

/*
Challenge no.2
What are the title of the 5 shortest (in length of runtime) movies?
*/

SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

/*
Challenge no.3
If the previous customer can watch any movie that is 50 minutes or less in run time,
how many options does she have?
*/
SELECT COUNT(length) FROM film
WHERE length <= 50;

