SELECT CASE 
            WHEN  A >= B+C OR B >= A+C OR C >= A+B  THEN 'Not A Triangle'
            WHEN A = B AND B = C     THEN 'Equilateral'
            WHEN A = B AND B <> C THEN 'Isosceles'
            WHEN  B=C AND B <> A THEN 'Isosceles'
            WHEN A=C AND B <> C THEN 'Isosceles'
            WHEN  A <> B AND B <> C THEN   'Scalene'
            END AS triangles
FROM TRIANGLES