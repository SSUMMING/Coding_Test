SELECT E.name, B.bonus
FROM Employee E
LEFT JOIN Bonus B ON E.empId  = B.empId 
WHERE bonus IS NULL OR bonus < 1000