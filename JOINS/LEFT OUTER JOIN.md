A left outer join results in the set of records that are in the left table. If there is no match with the right table, results are null. Later on, we will learn how to add where statement to further modify left outer JOIN

```sql
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
```

The order matters
