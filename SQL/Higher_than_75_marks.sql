select NAME from STUDENTS where Marks > 75 order by substring(NAME,-3), ID;

#Solution 1:
SELECT Name
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3) ASC, ID;

#Solution 2:
SELECT name FROM students
WHERE marks > 75
ORDER BY SUBSTR(name, LENGTH(name)-2, 3), id;