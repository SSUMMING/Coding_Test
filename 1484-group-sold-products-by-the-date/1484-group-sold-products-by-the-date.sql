-- 날짜별로 판매된 다양한 제품의 수와 이름을 찾는 솔루션을 작성하세요.
SELECT sell_date, COUNT(DISTINCT product) AS num_sold, GROUP_CONCAT(product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY 1
