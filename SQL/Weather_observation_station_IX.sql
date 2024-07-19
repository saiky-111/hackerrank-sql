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
