--Since 'either' word is there so use 'OR'


 #Solution 1:--(PREFER)
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(UPPER(CITY),1) NOT IN('A','E','I','O','U')
OR RIGHT(UPPER(CITY),1) NOT IN('A','E','I','O','U');

#Solution 2:
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU]|[^aeiouAEIOU]$';

another solution:
select distinct city from station where city not rlike '^[aeiou].*$' or city not rlike '^*[aeiou]$';
