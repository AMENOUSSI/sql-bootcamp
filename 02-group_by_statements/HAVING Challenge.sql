
-- What are the customer_ids of the customers who have had 40 or more transaction payments?

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

-- 2. What are the customer ids of customers who have spent more than $100 in payment transaction 
-- with our staff_id member 2?

SELECT customer_id,staff_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) > 100;