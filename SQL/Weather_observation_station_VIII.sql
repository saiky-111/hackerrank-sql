select distinct city from station where city rlike '^[aeiou].*[aeiou]$';

-- The query using RLIKE is identical in functionality to the one using REGEXP.
--  Both RLIKE and REGEXP are used for regular expression pattern matching in SQL.
-- RLIKE is supported by some SQL databases like MySQL as a synonym for REGEXP.

-- SOLUTION: 2

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(UPPER(CITY),1) IN('A','E','I','O','U') AND
RIGHT(UPPER(CITY),1) IN('A','E','I','O','U');

--SOLUTION: 3:

SELECT DISTINCT CITY 
FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';


-- ^[aeiou]:

--     ^ asserts the position at the start of the string.
--     [aeiou] matches any single character within the set (a, e, i, o, u).

-- .*:

--     . matches any character except newline.
--     * matches 0 or more occurrences of the preceding element.

-- [aeiou]$:

--     [aeiou] matches any single character within the set (a, e, i, o, u).
--     $ asserts the position at the end of the string.

-- Together, ^[aeiou].*[aeiou]$ ensures that the city name starts with a vowel and ends with a vowel, with any number of characters in between.