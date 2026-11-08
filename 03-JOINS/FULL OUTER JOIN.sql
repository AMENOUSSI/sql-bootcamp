-- Grab the customer who have not made a payment
SELECT * 
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

SELECT COUNT(DISTINCT customer_id) FROM customer;

-- Grab the customer who have not made a payment
SELECT * 
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

SELECT * FROM film;
