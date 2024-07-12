SELECT S.hacker_id, MAX(H.name)
FROM Hackers H
JOIN Submissions S ON H. hacker_id = S.hacker_id
LEFT JOIN Challenges C ON S.challenge_id =C.challenge_id
LEFT JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
WHERE S.score = D.score
GROUP BY S.hacker_id
HAVING COUNT(S.score) >= 2
ORDER BY COUNT(*) DESC, 1