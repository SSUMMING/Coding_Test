WITH date_df AS(
SELECT O.ANIMAL_ID, O.NAME, DATEDIFF(O.DATETIME,I.DATETIME) AS date_diff
FROM ANIMAL_OUTS O
LEFT JOIN ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID)

SELECT ANIMAL_ID,NAME
FROM date_df
ORDER BY date_diff DESC
LIMIT 2