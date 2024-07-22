-- 2020년 2월에 100개 이상 주문한 제품의 이름과 수량을 가져오는 솔루션을 작성하세요.
SELECT MAX(product_name) AS product_name, SUM(unit) AS unit
FROM Products P
JOIN Orders O ON P.product_id = O.product_id
WHERE DATE_FORMAT(order_date, '%Y-%m') = '2020-02'
GROUP BY O.product_id, product_name
HAVING SUM(unit) >= 100
