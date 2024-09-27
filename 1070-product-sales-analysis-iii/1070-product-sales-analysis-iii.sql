# Write your MySQL query statement below

WITH min AS (
SELECT product_id, MIN(year) AS min_year
FROM Sales 
GROUp BY product_id)

SELECT S.product_id,
       S.year AS first_year,
       S.quantity,
       S.price
FROM min M
JOIN Sales S ON M.product_id = S.product_id AND M.min_year = S.sale_id