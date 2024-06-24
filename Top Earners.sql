SELECT months*salary AS earnings, COUNT(*)
FROM Employee
WHERE (months*salary) = (SELECT MAX(salary * months)
                                            FROM Employee)
GROUP BY months*salary
