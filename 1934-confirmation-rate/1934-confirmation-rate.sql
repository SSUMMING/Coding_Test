SELECT S.user_id,
       ROUND(COUNT(CASE WHEN action = 'confirmed' THEN S.user_id END) / COUNT(*) ,2) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C ON S.user_id = C.user_id
GROUP BY S.user_id