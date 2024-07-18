select distinct city from station where city rlike '^[aeiou].*[aeiou]$';


-- SOLUTION: 2

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(UPPER(CITY),1) IN('A','E','I','O','U') AND
RIGHT(UPPER(CITY),1) IN('A','E','I','O','U');