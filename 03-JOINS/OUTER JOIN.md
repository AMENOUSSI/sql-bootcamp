- There are few different types od OUTER JOINs

- They will allow us to specify how to deal with values only present in one of the tables being joined.

- These are the more complex JOINs, take your time when trying to understand them!

Overview

- Explain:
  . FULL OUTER JOIN
  - Clarifying WHERE null
    . LEFT OUTER JOIN
  - Clarifying WHERE null
    . RIGHT OUTER JOIN
  - Clarifying WHERE null

FULL OUTER JOIN

```sql
SELECT * FROM TableB
FULL OUTER JOIN TableA
ON TableA.col_match = TableB.col_match
```

FULL OUTER JOIN with WHERE get rows unique to either table
(Rows not found in both tables)

```sql
SELECT * FROM TableB
FULL OUTER JOIN TableA
ON TableA.col_match = TableB.col_match
WHERE TableA.id IS null OR TableB.id IS null
```
