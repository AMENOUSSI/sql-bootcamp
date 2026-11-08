SELECT * FROM payment;

SELECT EXTRACT(YEAR FROM payment_date) AS year_
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT TO_CHAR(payment_date,'MONTH-YYYY')
FROM payment;

SELECT DISTINCT TO_CHAR(payment_date,'MONTH') FROM payment;

SELECT
    amount,
    TO_CHAR(payment_date, 'FMDay') AS day_of_week
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;

SELECT
    COUNT(*)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;