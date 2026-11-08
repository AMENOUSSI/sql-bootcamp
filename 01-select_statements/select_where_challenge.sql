/*
Challenge no.1

- A customer forgot their wallet at our store! 
We need to track down their eamil to inform them.
* Task
What's the email for the customer with the name Nancy Thomas?
*/

-- First: Knowing the customer's table structure or columns

SELECT * FROM customer;

SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

/*
Challenge no.2

	. A customer want to know what the movie 'Outlaw Hanky' is about.
	. Could you give them the description for the movie 'Outlaw Hanky'?

*/

SELECT description FROM film
WHERE title = 'Outlaw Hanky';

/*
Challenge no.3

	. A customer is late on their movie return, and we've mailed them a
	letter to their address at '259 Ipoh Drive'. We should also call them on the phone to let them know.

	Task:
	Can you get the phone number for the customer who lives at '259 Ipoh Drive'

*/

SELECT phone FROM address
WHERE address = '259 Ipoh Drive';