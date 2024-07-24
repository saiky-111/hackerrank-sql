
Q. Type of Triangle | Easy | HackerRank

Write a query identifying the type of each record in the TRIANGLES 

table using its three side lengths. Output one of the following 

statements for each record in the table:


    Equilateral: It's a triangle with 3 sides of equal length.
    Isosceles: It's a triangle with 2 sides of equal length.
    Scalene: It's a triangle with 3 sides of differing lengths.
    Not A Triangle: The given values of A, B, and C don't form a triangle.


Input Format:

The TRIANGLES table is described as follows:

TRIANGLES
--------------------
| Column | Type    |
|--------|---------|
| A     | Integer  |
| B     | Integer  |
| C     | Integer  |
--------------------

Each row in the table denotes the lengths of each of a triangles three sides.

Sample Input:

----------------
|  A |  B |  C |
|----|----|----|
| 20 | 20 | 23 |
| 20 | 20 | 20 |
| 20 | 21 | 22 |
| 13 | 14 | 30 |
----------------

Sample Output:

Isosceles
Equilateral
Scalene
Not A Triangle


Explanation:

Values in the tuple **(20, 20, 23)**form an Isosceles triangle, 

because A ≡ B. Values in the tuple (20, 20, 20) form an Equilateral 

triangle, because A ≡ B ≡ C. Values in the tuple (20, 21, 22) 

form a Scalene triangle, because A ≠ B ≠ C. Values in the tuple (13, 14, 30) 

cannot form a triangle because the combined value of sides A and B 

is not larger than that of side C.






SOLUTION :1:--In this Question, the order of the solution also matters, otherwise it gives error.

SELECT CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN "Not A Triangle"
    WHEN A=B AND A=C THEN "Equilateral"
    WHEN A=B OR A=C OR B=C THEN "Isosceles"
    WHEN A!=B AND A!=C AND B!=C THEN "Scalene"
END
FROM TRIANGLES;
--mysql solution



SOLUTION:2:

SELECT 
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR A = C OR B = C THEN 'Isosceles'
        ELSE 'Scalene'
    END AS triangle
FROM 
    TRIANGLES;



SOLUTION 3:

SELECT IF(A+B>C AND A+C>B AND B+C>A, IF(A=B AND B=C, 'Equilateral', IF(A=B OR B=C OR A=C, 'Isosceles', 'Scalene')), 'Not A Triangle')
FROM TRIANGLES;         --MYSQL Solution

SELECT IF(A+B>C AND B+C>A AND  C+A>B , IF(A=B AND A=C ,"Equilateral", IF(A=B OR B=C OR C=A ,"Isosceles", "Scalene")), "Not A Triangle") 
AS TRIANGLE FROM TRIANGLES;  
--  (this is also valid)