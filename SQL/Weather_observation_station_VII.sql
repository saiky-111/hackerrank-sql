select distinct city from station
where city like '%a' or
city like '%e' or
city like '%i' or
city like '%o' or
city like '%u';

-- SOLUTION 2:

SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(UPPER(CITY),1) IN ('A', 'E', 'I', 'O', 'U');

--SOLUTION: 3:

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$';

-- [aeiou] is a character class that matches any single character within the set (a, e, i, o, u).
-- $ asserts the position at the end of the string.
-- Together, [aeiou]$ ensures that the city name ends with any of the vowels 'a', 'e', 'i', 'o', or 'u'.