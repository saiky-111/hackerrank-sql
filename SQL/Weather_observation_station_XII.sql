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