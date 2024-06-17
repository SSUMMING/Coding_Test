SELECT CATEGORY,PRICE AS MAX_PRICE,PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY,PRICE) IN (SELECT CATEGORY,MAX(PRICE) AS MAX_PRICE
                            FROM FOOD_PRODUCT
                            WHERE CATEGORY IN ('과자','국','김치','식용유')
                            GROUP BY CATEGORY
                            )
ORDER BY MAX_PRICE DESC;

# 카테고리별 가격이 가장 비싼 식품
# SELECT CATEGORY, MAX(PRICE)
# FROM FOOD_PRODUCT
# GROUP BY CATEGORY