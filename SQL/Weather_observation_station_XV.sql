
Q. Weather Observation Station 15 | Easy | HackerRank

Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) 

in STATION that is less than 137.2345. Round your answer to 4 decimal places.


Input Format:

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







--SOLUTION 1:

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;


-- This is a wrong solution. Never do this: select round(long_w , 4)  from station where max(lat_n) < 137.2345;

--SOLUTION:2 : (SUBQUERY SOLUTION)

select round(LONG_W,4) from STATION where LAT_N = (select max(LAT_N) from STATION where LAT_N < 137.2345);