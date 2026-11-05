SQL provides a variety of aggregate functions.
The main idea behind an aggregate functons is to take multiple inputs and return a single output.

.Most Commun Aggregate Functions: - AVG(): returns average value - COUNT(): returns number of values - MAX(): returns maximun value - MIN(): returns minimum value - SUM(): returns the sum of values

Aggregate functions calls happen only in the SELECT clause or the HAVING clause

# Special Notes

AVG() returns a floating point value many decimal places (e,g. 2.342418...)

You can use ROUND() to specify precision after decimal.

COUNT() simply returns the number of rows, which means by convention we just use COUNT(\*)
