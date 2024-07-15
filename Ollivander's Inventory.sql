SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands W
JOIN Wands_Property P ON W.code = P.code
WHERE P.is_evil = 0
  AND (W.coins_needed, W.power, P.age) IN (
        SELECT MIN(W2.coins_needed), W2.power, P2.age
        FROM Wands W2
        JOIN Wands_Property P2 ON W2.code = P2.code
        WHERE P2.is_evil = 0
        GROUP BY W2.power, P2.age
  )
ORDER BY W.power DESC, P.age DESC;