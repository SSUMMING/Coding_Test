SELECT P.product_id, 
        IFNULL(ROUND(SUM(P.price*U.units) / SuM(units),2),0) AS average_price
FROM UnitsSold U
RIGHT JOIN Prices P ON U.product_id = P.product_id AND U.purchase_date >= P.start_date AND U.purchase_date <= P.end_date
GROUP BY product_id
