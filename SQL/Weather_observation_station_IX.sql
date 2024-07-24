
Q. Weather Observation Station 9 | Easy | HackerRank

Query the list of CITY names from STATION that do not start with vowels. 

Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

STATION
-----------------------------
| Field  | Type            |
|--------|------------------|
| ID     | NUMBER           |
| CITY   | VARCHAR2(21)     |
| STATE  | VARCHAR2(2)      |
| LAT_N  | NUMBER           |
| LONG_W | NUMBER           |
-----------------------------

where LAT_N is the northern latitude and LONG_W is the western longitude.




--SOLUTION:1

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]';
-- [^aeiou] (Negated Character Class):
-- ^ inside the brackets negates the character class, meaning it matches any character except those listed.
-- The regular expression ^[^aeiou] ensures that the city name does not start with a lowercase vowel.

--SOLUTION :2

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU].*$';

--Here basically .*$ is unnecessary to write them here
-- NOT ensures that the city name does not match the pattern (i.e., it does not start with a vowel).

--SOLUTION:3

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU]';


--SOLUTION: 4

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(UPPER(CITY),1) NOT IN('A','E','I','O','U');

--SOLUTION:5
SELECT DISTINCT CITY 
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU]';
--USE THIS VERSION.
-- These version ensure that cities not starting with either uppercase or lowercase vowels are selected.
