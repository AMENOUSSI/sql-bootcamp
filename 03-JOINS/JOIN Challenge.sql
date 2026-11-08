-- A customer walks in and is huge fan of the actor "Nick Wahlberg" and wants to know which movies he is in.
-- . Get a list of all the movies "Nick Wahlberg" has been in.

SELECT * FROM actor
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg';

SELECT * FROM film_actor;

SELECT 
  film.title,
  first_name,
  last_name
FROM film_actor
INNER JOIN actor 
ON film_actor.actor_id = actor.actor_id 
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE actor.first_name = 'Nick' 
AND actor.last_name = 'Wahlberg';

-- Another solution
SELECT title,first_name,last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';


