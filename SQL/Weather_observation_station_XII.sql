Q. Weather Observation Station 12 | Easy | HackerRank

Query the list of CITY names from STATION that do not start with vowels 

and do not end with vowels. Your result cannot contain duplicates.

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





-- SOLUTION:1

select distinct city from station where city not rlike '^*[aeiou]$' and city not rlike '^[AEIOU].*$';


-- (PREFER BELOW SOLUTIONS:)
#Solution 1:
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(UPPER(CITY),1) NOT IN('A','E','I','O','U')
AND RIGHT(UPPER(CITY),1) NOT IN('A','E','I','O','U');

#Solution 2:
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$';