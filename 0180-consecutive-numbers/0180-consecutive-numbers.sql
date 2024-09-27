SELECT DISTINCT L2.num AS ConsecutiveNums
FROM Logs L
JOIN Logs L1 ON L.id = L1.id +1
JOIN Logs L2 ON L.id = L2.id + 2
WHERE L.num = L1.num AND L1.num =  L2.num