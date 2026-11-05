-- LIKE and ILIKE
/*
LIKE operator allows us to perform pattern matching against string 
data with the use of wildcard characters:
	. Percent %
	 	* Matchesany sequence of characters
	. Underscore _
		* Matches any single character

. All names that begin with an 'A'
	* WHERE name LIKE 'A%'
. All names that end with an 'a'
	* WHERE name LIKE '%a'

Notice that LIKE is case-sensitive, we can use ILIKE which is case-insensitive

WHERE name LIKE '_her%': only one character allow before
WHERE name LIKE 'value__'
*/

SELECT * FROM customer
WHERE first_name LIKE 'J%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%';

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT COUNT(*) FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 'j%';


SELECT * FROM customer
WHERE first_name LIKE '%r%';

SELECT * FROM customer
WHERE first_name LIKE '____er%';

