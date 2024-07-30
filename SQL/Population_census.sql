
Q. POpulation Census | Easy | HackerRank

Given the CITY and COUNTRY tables, query the sum of the populations 

of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


Input Format:

The CITY and COUNTRY tables are described as follows: 

CITY
----------------------------------
| Field       | Type            |
|-------------|------------------|
| ID          | NUMBER           |
| NAME        | VARCHAR2(17)     |
| COUNTRYCODE | VARCHAR2(3)      |
| DISTRICT    | VARCHAR2(20)     |
| POPULATION  | NUMBER           |
----------------------------------

COUNTRY
--------------------------------------
| Field           | Type            |
|-----------------|------------------|
| CODE            | VARCHAR2(3)      |
| NAME            | VARCHAR2(44)     |
| CONTINENT       | VARCHAR2(13)     |
| REGION          | VARCHAR2(25)     |
| SURFACEAREA     | NUMBER           |
| INDEPYEAR       | VARCHAR2(5)      |
| POPULATION      | NUMBER           |
| LIFEEXPECTANCY  | VARCHAR2(4)      |
| GNP             | NUMBER           |
| GNPOld          | VARCHAR2(9)      |
| LOCALNAME       | VARCHAR2(44)     |
| GOVERNMENTFORM  | VARCHAR2(44)     |
| HEADOFSTATE     | VARCHAR2(32)     |
| CAPITAL         | VARCHAR2(4)      |
| CODE2           | VARCHAR2(2)      |
--------------------------------------






--SOLUTION: 1

SELECT SUM(CITY.POPULATION) AS TotalPopulation
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';


--SOLUTION: 2

SELECT SUM(CITY.POPULATION) AS TotalPopulation
FROM CITY AS ci
INNER JOIN COUNTRY AS co
ON ci.COUNTRYCODE = co.CODE WHERE continent = 'Asia';


--SOLUTION:3 (SUBQUERY SOLUTION)

select sum(population) from city where countrycode in (select code from country where continent = 'Asia');