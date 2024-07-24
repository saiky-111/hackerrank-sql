
Q. Revising Aggregations - The Sum Function | Easy | HackerRank

Query the total population of all cities in CITY where District is California.

Input Format:

The CITY table is described as follows:

CITY
--------------------------------
| Field       | Type           |
|-------------|----------------|
| ID          | NUMBER         |
| NAME        | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)    |
| DISTRICT    | VARCHAR2(20)   |
| POPULATION  | NUMBER         |
--------------------------------






-- SOLUTION:

SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

-- COUNT is used to determine the number of rows or the number of non-NULL values in a column.
-- SUM is used to calculate the total of all numeric values in a column.
-- COUNT can be used with any data type, while SUM is used only with numeric data types.