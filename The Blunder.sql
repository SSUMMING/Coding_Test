SELECT CEILING(AVG(Salary) - AVG(Salary_2))
FROM (SELECT Salary, REPLACE(Salary,0,'') AS Salary_2
            FROM EMPLOYEES) AS A 