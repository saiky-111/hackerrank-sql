
Q. Higher Than 75 Marks | Easy | HackerRank

Query the Name of any student in STUDENTS who scored higher than

75 Marks. Order your output by the last three characters of each name.

If two or more students both have names ending in the same last three characters

(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.


Input Format

The STUDENTS table is described as follows:

STUDENTS
--------------------
| Column | Type    |
|--------|---------|
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |
--------------------

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

Sample Input:

-------------------------
| ID | Name     | Marks |
|----|----------|-------|
|  1 | Ashley   |    81 |
|  2 | Samantha |    75 |
|  4 | Julia    |    76 |
|  3 | Belvet   |    84 |
-------------------------

Sample Output

Ashley
Julia
Belvet


Explanation:

Only Ashley, Julia, and Belvet have Marks > 75.

If you look at the last three characters of each of their names,

there are no duplicates and 'ley' < 'lia' < 'vet'.






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