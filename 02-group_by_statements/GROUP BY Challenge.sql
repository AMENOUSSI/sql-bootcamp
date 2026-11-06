
-- Challenge
-- 1. We have two staff members, with stall ids 1 and 2. 
-- we want to give a bonus to the staff member that handled the most payments.
-- (Most in terms of number of payments processed, not total dollar amount).

-- 2. How many payments did each staff member handle and who gets the bonus?
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id;



--Corporate HQ is conducting a study on the relationship between replacement cost and movie MPAA rating
-- What is the average replacement cost per MPAA rating?

SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- Here is the solution
SELECT rating, AVG(replacement_cost) FROM film
GROUP BY rating;

-- What are the customer ids of the top 5 customers by total spend?
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount)DESC
LIMIT 5;