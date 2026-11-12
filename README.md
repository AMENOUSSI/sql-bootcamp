# SQL Bootcamp — PostgreSQL

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

My notes, exercises and solutions from **The Complete SQL Bootcamp** (Udemy), completed in November 2026. Every lesson and challenge was written and run in PostgreSQL with pgAdmin, and committed as I went: the history shows the progression section by section.

## What I practised

| # | Section | Topics |
|---|---|---|
| 01 | [SELECT statements](01-select_statements) | `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `DISTINCT`, `COUNT`, `BETWEEN`, `IN`, `LIKE` / `ILIKE` |
| 02 | [GROUP BY](02-group_by_statements) | Aggregate functions (`SUM`, `AVG`, `MIN`, `MAX`, `ROUND`), `GROUP BY` on one or several columns, `HAVING` |
| 03 | [JOINs](03-JOINS) | Aliases with `AS`, `INNER JOIN`, `LEFT` / `RIGHT` / `FULL OUTER JOIN`, rows unique to one table (`WHERE … IS NULL`) |
| 04 | [Advanced SQL commands](04-Advanced%20SQL%20Commands) | Dates and times (`EXTRACT`, `TO_CHAR`, `NOW`), math and string functions, subqueries with `EXISTS`, self-joins |
| 05 | [Creating databases and tables](05-Creating%20Databases%20and%20Tables) | `CREATE`, `INSERT`, `UPDATE`, `DELETE`, `ALTER TABLE`, data types, primary and foreign keys, `NOT NULL`, `UNIQUE` and `CHECK` constraints |
| 06 | [Conditional expressions](06-Conditional%20Expressions%20and%20procedures) | `CASE`, `COALESCE`, `NULLIF`, `CAST`, views, querying PostgreSQL from Python with `psycopg2` |

Each folder mixes short lecture notes (`.md`) and the matching queries (`.sql`); files with *challenge* in their name are my answers to the course exercises.

## Assessments

| Assessment | Database | What it covers |
|---|---|---|
| [Assessment 1](02-group_by_statements/assessement1.md) — [my solution](02-group_by_statements/assessment1_solution.sql) | `dvdrental` | Filtering, aggregation and `HAVING` on payments, films and customers |
| [Assessment 2 — my solution](04-Advanced%20SQL%20Commands/Statement%20Test%202%20-%20my%20solution.sql) | `exercises` (`cd` schema) | 14 questions on a sports club's members, facilities and bookings: filters, date ranges, grouping and joins |
| [Assessment 3](06-Conditional%20Expressions%20and%20procedures/Assessment%20Test%203.sql) | new tables | Designing `students` and `teachers` tables with constraints, altering a column type, inserting data |

## Running the queries

1. Install [PostgreSQL](https://www.postgresql.org/download/) and pgAdmin.
2. Restore the sample databases provided with the course:

   ```bash
   createdb -U postgres dvdrental
   pg_restore -U postgres -d dvdrental dvdrental.tar

   createdb -U postgres exercises
   pg_restore -U postgres -d exercises exercises.tar
   ```

   `dvdrental` is the classic PostgreSQL sample database of a DVD rental store; `exercises` contains the `cd` schema (`members`, `facilities`, `bookings`).
3. Open any `.sql` file in pgAdmin's Query Tool, connected to the matching database, and run the queries one by one.

The Python example (`06-…/postgresql_and_python.py`, from the course notebook) needs `pip install psycopg2-binary` and your own PostgreSQL password.

## Why this repository

SQL is the core skill of the data engineering path I am following. This bootcamp gave me the fundamentals, from simple selects to schema design, and I am now building on them with data transformations in dbt on Snowflake.
