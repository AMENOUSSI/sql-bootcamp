. CASE
. COALESCE
. NULLIF
. CAST
. Views
. Import and Export Functionality

We can only use the CASE statement to only execute SQL code when certain conditions are met.
This is very similar to IF/ELSE statements in other programming languages.

There are two main ways to use a CASE statement,either a general CASE or a CASE expression.
. Bothe methods can lead to the same results.
. Let's first show the syntax for a "general" CASE.

. General Syntax

``sql
CASE
WHEN condition1 THEN result1
WHEN condition2 THEN result2

    ELSE some_other_result

END
``

Simple Example

SELECT a,
CASE WHEN a=1 THEN 'one
WHEN a = 2 'two
ELSE 'other
END
FROM test;

The CASE expression syntax first evaluates an expression then compares the result with each value in the WHEN clauses sequentially

CASE Expresion Syntax
. CASE expression
WHEN value1 then result1
WHEN value2 THEN result2

END
