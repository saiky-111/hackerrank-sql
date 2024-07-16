--SOLUTION 1:
SELECT DISTINCT city
FROM station
WHERE city LIKE 'a%'
   OR city LIKE 'e%'
   OR city LIKE 'i%'
   OR city LIKE 'o%'
   OR city LIKE 'u%';

--Pattern Matching: The pattern 'a%' means that we are looking for any string that starts with the letter 'a' 
--followed by zero or more characters of any kind. This would match city names like 'Austin', 'Albany', 'Amsterdam', etc.

-- LIKE is a SQL operator used for pattern matching.
-- 'a%' is a pattern that matches any string that starts with the letter 'a'. 
-- The % symbol is a wildcard that matches zero or more characters.

--SOLUTION 2:
SELECT DISTINCT city
FROM station
WHERE UPPER(SUBSTR(city, 1, 1)) IN ('A', 'E', 'I', 'O', 'U');


-- SUBSTR(city, 1, 1) is a function that extracts a substring from the city column,
-- starting at position 1 and with a length of 1. This effectively retrieves the
-- first character of the city name.

-- UPPER(SUBSTR(city, 1, 1)) converts the extracted first character to uppercase. This ensures that the comparison is
-- case-insensitive, matching both uppercase and lowercase vowels.

-- IN ('A', 'E','I', 'O', 'U') checks if the uppercase first character of the city name is one
-- of the vowels ('A', 'E', 'I', 'O', 'U').

This also works:
SELECT DISTINCT city
FROM station
WHERE LOWER(SUBSTR(city, 1, 1)) IN ('a', 'e', 'i', 'o', 'u');


--SOLUTION 3:
SELECT DISTINCT CITY FROM STATION
WHERE LEFT(UPPER(CITY),1) IN ('A','E','I','O','U');

-- LEFT(UPPER(city), 1) extracts the first character from the uppercase city name. 
-- LEFT(string, n) returns the first n characters of the string.