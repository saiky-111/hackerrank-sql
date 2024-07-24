Q. Weather Observation Station 10 | Easy | HackerRank

Query the list of CITY names from STATION that do not end with vowels.

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




Solution:1

select distinct city from station where city not rlike '^.*[aeiou]$';


#Solution:2
select distinct city from station where city not rlike '[aeiou]$';


#solution :3
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[^aeiouAEIOU]$';
-- (PREFER THIS)

#Solution 4:--(THIS IS ALSO GOOD)
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(UPPER(CITY),1) NOT IN('A','E','I','O','U');

