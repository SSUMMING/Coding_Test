-- DELETE FROM Person
-- WHERE id IN (SELECT DISTINCT MAX(id) FROM Person GROUP email HAVING COUNT(*) >1)

delete p1 from person p1,person p2 
where p1.email=p2.email and p1.id>p2.id;