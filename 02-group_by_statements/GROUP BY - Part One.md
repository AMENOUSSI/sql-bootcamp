# GROUP BY

## General syntax

```sql
SELECT category_col, AGG(data_col)
FROM table
GROUP BY category_col;
```

## Rules

- `GROUP BY` must appear right after `FROM` or `WHERE`.
- In the `SELECT`, every column must either be inside an aggregate function or be in the `GROUP BY`.
- `WHERE` filters rows **before** grouping, so it cannot contain an aggregate.

```sql
SELECT category_col, AGG(data_col)
FROM table
WHERE category_col != 'A'
GROUP BY category_col;
```

## Several grouping columns

```sql
SELECT company, division, SUM(sales)
FROM finance_table
GROUP BY company, division;
```

## Sorting by an aggregate

Reference the whole function, or use its alias:

```sql
SELECT company, SUM(sales) AS total_sales
FROM finance_table
GROUP BY company
ORDER BY SUM(sales) DESC   -- or: ORDER BY total_sales DESC
LIMIT 5;                   -- top 5 (without DESC: the 5 smallest)
```

## Common mistake

Selecting a column that is neither aggregated nor in `GROUP BY` gives:
`column "x" must appear in the GROUP BY clause or be used in an aggregate function`
