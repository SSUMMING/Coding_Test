WITH first_order AS(
SELECT customer_id, MIN(order_date) AS min_date
FROM Delivery
GROUP BY customer_id)

SELECT ROUND(COUNT(CASE WHEN D.order_date = customer_pref_delivery_date THEN 1 END) / COUNT(DISTINCT D.customer_id )*100,2) AS immediate_percentage
FROM first_order F
JOIN Delivery D ON F.customer_id = D.customer_id AND F.min_date = D.order_date
