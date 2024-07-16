SELECT user_id, COUNT(follower_id) AS follower_id
FROM Followers
GROUP BY user_id
ORDER BY 1