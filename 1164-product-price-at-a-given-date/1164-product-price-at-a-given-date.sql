WITH LatestPrices AS (
    SELECT product_id, new_price
    FROM Products
    WHERE (product_id, change_date) IN (
        SELECT product_id, MAX(change_date)
        FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
    )
)

SELECT P.product_id, COALESCE(LP.new_price, 10) AS price
FROM (SELECT DISTINCT product_id FROM Products) AS P
LEFT JOIN LatestPrices LP ON P.product_id = LP.product_id;