
Q. Revising Aggregations - The Count Function | Easy | HackerRank

Query a count of the number of cities in CITY having a 

Population larger than 100,000.


Input Format:
The CITY table is described as follows:

-------------------------------
| Field       | Type           |
|-------------|----------------|
| ID          | NUMBER         |
| NAME        | VARCHAR2(17)   |
| COUNTRYCODE | VARCHAR2(3)    |
| DISTRICT    | VARCHAR2(20)   |
| POPULATION  | NUMBER         |
--------------------------------







SOLUTION:1:
select count(*) from city where population > 100000;

SOLUTION:2:
SELECT COUNT(ID) FROM CITY
WHERE POPULATION > 100000;