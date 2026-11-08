SELECT * FROM address
WHERE district = 'California';

SELECT * FROM customer;

-- What are the emails of the customers who live in California?

SELECT address.district, email FROM customer
LEFT JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

-- Using INNER JOIN

SELECT district,email FROM address
INNER JOIN customer
ON address.address_id = customer.customer_id
WHERE district = 'California';

