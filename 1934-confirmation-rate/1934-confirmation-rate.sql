WITH total AS(
SELECT S.user_id, 
       CASE WHEN action IS NULL THEN 0
            ELSE COUNT(*) 
            END AS total_request
FROM Signups S 
LEFT JOIN Confirmations C ON S.user_id = C.user_id
GROUP BY S.user_id
) 
,
confirmed AS(
SELECT user_id, COUNT(*) AS confirmed_request
FROM Confirmations 
WHERE action = 'confirmed'
GROUP BY user_id)

SELECT T.user_id, 
        IFNULL(ROUND(confirmed_request/total_request,2), 0) AS confirmation_rate
FROM total T LEFT JOIN confirmed  CF ON T.user_id = CF.user_id
