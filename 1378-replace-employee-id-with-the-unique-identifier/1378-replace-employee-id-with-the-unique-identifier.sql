SELECT unique_id AS unique_id, name
FROM Employees E
LEFT JOIN EmployeeUNI U ON E.id = U.id