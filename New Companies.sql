SELECT C.company_code,
            C.founder,
            COUNT(DISTINCT lead_manager_code) AS lead, 
            COUNT(DISTINCT senior_manager_code) AS senior, 
            COUNT(DISTINCT manager_code) AS manager, 
           COUNT(DISTINCT employee_code) AS employee
FROM Company C
JOIN Employee E ON C.company_code = E.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code
