
Q. Weather Observation Station 17 | Easy | HackerRank

Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) 

in STATION is greater than 38.7780. Round your answer to 4 decimal places.


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





--SOLUTION:1


SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N
LIMIT 1;


--SOLUTION:2:

select round(LONG_W,4) from STATION where LAT_N = (select min(LAT_N) from STATION where LAT_N > 38.7780);