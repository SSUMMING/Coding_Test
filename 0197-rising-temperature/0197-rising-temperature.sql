SELECT W.id
FROM Weather W
JOIN Weather W1 ON W.recordDate = DATE_ADD(W1.recordDate, INTERVAL 1 DAY)
WHERE W.temperature > W1.temperature

-- DATE_SUB(W1.recorDate, INTERVAL 1 DAY) 