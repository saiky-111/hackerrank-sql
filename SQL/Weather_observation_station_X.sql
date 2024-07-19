
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

