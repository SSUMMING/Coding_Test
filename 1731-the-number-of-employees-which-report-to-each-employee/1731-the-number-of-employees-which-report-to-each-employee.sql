WITH re_sub AS(
SELECT reports_to, COUNT(*) AS cnt, ROUND(AVG(age),0) AS avg_age
FROM Employees
WHERE reports_to IS NOT NULL
GROUP BY reports_to)

SELECT R.reports_to AS employee_id, name, cnt AS reports_count , avg_age AS average_age 
FROM Employees E
LEFT JOIN re_sub R ON E.employee_id = R.reports_to
WHERE E.employee_id = R.reports_to
ORDER BY 1