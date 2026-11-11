SELECT * FROM customer;

SELECT customer_id,
CASE 
	WHEN (customer_id <= 100) THEN 'Premiun'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class

FROM customer;


SELECT * FROM customer;



SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results

FROM customer;


SELECT * FROM film;

SELECT rental_rate,
CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END
FROM film;

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(CASE rental_rate
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
FROM film;

SELECT * FROM film;

SELECT
SUM(
CASE rating
	WHEN 'R' THEN 1 ELSE 0
END
) AS r,
SUM(
CASE rating
	WHEN 'PG' THEN 1 ELSE 0
END
) AS pg,
SUM(
CASE rating
	WHEN 'PG-13' THEN 1 ELSE 0
END
) AS pg13,
SUM(
CASE rating
	WHEN 'G' THEN 1 ELSE 0
END
) AS g,
SUM(
CASE rating
	WHEN 'NC-17' THEN 1 ELSE 0
END
) AS nc17

FROM film;