# 사번, 성명, 평가등급(분기별 점수 평균), 보너스(연봉*20%)
SELECT EMP_NO, EMP_NAME, GRADE,
        CASE
        WHEN GRADE = 'S' THEN SAL*0.2
        WHEN GRADE = 'A' THEN SAL * 0.15
        WHEN GRADE = 'B' THEN SAL * 0.1
        ELSE SAL * 0
        END AS BONUS
FROM(SELECT G.EMP_NO, EMP_NAME, SAL, AVG(SCORE),
        CASE 
        WHEN AVG(SCORE) >= 96  THEN 'S'
        WHEN AVG(SCORE) >= 90 THEN 'A'
        WHEN AVG(SCORE) >= 80 THEN 'B'
        ELSE 'C'
        END AS GRADE
FROM HR_EMPLOYEES E
JOIN HR_GRADE G ON E.EMP_NO = G.EMP_NO
GROUP BY G.EMP_NO) AS A
ORDER BY 1


# 사원1 