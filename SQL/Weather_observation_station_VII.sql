select distinct city from station
where city like '%a' or
city like '%e' or
city like '%i' or
city like '%o' or
city like '%u';

-- SOLUTION 2:

SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(UPPER(CITY),1) IN ('A', 'E', 'I', 'O', 'U');