WITH play_min AS(
SELECT player_id , MIN(event_date) AS min_date
FROM Activity
GROUP BY player_id)

SELECT ROUND(COUNT(CASE WHEN DATEDIFF(A.event_date,min_date) = 1 THEN 1 ELSE NULL END) / COUNT(DISTINCT A.player_id),2) AS fraction
FROM play_min P
RIGHT JOIN Activity A ON P.player_id = A.player_id 
