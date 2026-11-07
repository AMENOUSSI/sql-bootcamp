- The AS operator gets executed at the very end of a query, meaning that we can can not use the ALIAS inside a WHERE operator.
- Let's walk through a few example in pgAdmin!

```sql
SELECT column AS new_name
FROM table

SELECT SUM(AMOUNT) AS new_name
FROM payment
```
