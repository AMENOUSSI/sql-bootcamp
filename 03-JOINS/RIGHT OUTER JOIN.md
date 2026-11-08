A RIGHT JOIN is essentially the same as a LEFT JOIN, except the tables are switched.

```sql
SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match

# `WHERE statement`
SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableA.id IS null
```
