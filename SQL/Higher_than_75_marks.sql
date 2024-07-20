SOLUTION:

select NAME from STUDENTS where Marks > 75 order by substring(NAME,-3), ID;       --MYSQL
-- (NAME, -3): The -3 argument tells the function to start from the third character 
-- from the end of the string and continue to the end of the string.
--  This effectively retrieves the last three characters of the NAME.

#Solution 1:
SELECT Name
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3) ASC, ID;

#Solution 2:
SELECT name FROM students
WHERE marks > 75
ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id;