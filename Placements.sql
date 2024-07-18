SELECT S.Name
FROM Students S
JOIN Friends F ON S.ID = F.ID
JOIN Packages P On F.ID = P.ID
JOIN PAckages BF ON F.Friend_ID = BF.ID
WHERE P.Salary < BF.Salary
ORDER BY BF.Salary ASC;