/*
The BETWEEN operator is the same as :
	. value >= low AND value <= high
	. value BETWEEN low AND high

You can also combine BETWEEN with the NOT logical operator:
	. value NOT BETWEEN low AND high

The NOT BETWEEN operator is the same as:
	. value < low OR value > high
	. value NOT BETWEEN low AND high

BETWEEN can also be used with dates
*/

SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 AND 9;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';