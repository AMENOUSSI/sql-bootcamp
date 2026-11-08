- What is a JOIN operation?
  JOINS allows us to combine multiple tables together.

-The main reaon for the different JOIN types is to decide how to deal with information only present in one of the joined tables.

- INNER JOIN will result with the set of records that match in both tables.

```sql
SELECT * FROM TableA
INNER JOIN TableB
ON TableA.col_match = TableB.col_match
```

```sql
SELECT * FROM Registrations
INNER JOIN Logins
ON Registrations.name = Logins.name

SELECT reg_id,Logins.name,log_id FROM Registrations
INNER JOIN Logins
ON Registrations.name = Logins.name
```

- Remember that table order won't matter in an INNER JOIN

- Also if you see just JOIN without the INNER, PostgreSQL will treat it as an INNER JOIN.
