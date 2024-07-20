SOLUTION :1:

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