SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T On V.visit_id =T.visit_id
WHERE amount IS NULL
GROUP BY customer_id