SELECT A.hacker_id, MAX(name), SUM(max_score)
FROM (SELECT hacker_id, challenge_id , MAX(score) AS max_score
FROM Submissions
WHERE score <> 0
GROUP BY  hacker_id, challenge_id ) AS  A
JOIN Hackers ON A.hacker_id = Hackers.hacker_id
GROUP BY A. hacker_id
ORDER BY 3 DESC, 1