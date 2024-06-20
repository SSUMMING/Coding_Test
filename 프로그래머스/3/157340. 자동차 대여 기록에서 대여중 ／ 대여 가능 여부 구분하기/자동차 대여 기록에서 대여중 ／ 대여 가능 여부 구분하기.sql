# SELECT CAR_ID,
#         START_DATE,END_DATE,
#         CASE
#         WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16' THEN 1
#         ELSE 0
#         END AS AVAILABILITY
# FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
# ORDER BY 1

SELECT CAR_ID,
        CASE
        WHEN MAX(AVAILABILITY_test) = 0 THEN '대여 가능'
        WHEN MAX(AVAILABILITY_test) = 1 THEN '대여중'
        END AS AVAILABILITY
FROM (SELECT CAR_ID,
            START_DATE,END_DATE,
            CASE
            WHEN START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16' THEN 1
            ELSE 0
            END AS AVAILABILITY_test
       FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
       ORDER BY 1) AS A
GROUP BY CAR_ID
ORDER BY 1 DESC;
