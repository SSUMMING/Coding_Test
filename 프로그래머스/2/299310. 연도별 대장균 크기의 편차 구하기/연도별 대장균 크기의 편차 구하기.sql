# 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID) 
# 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기

# 각 연도의 max값 구하기 
WITH max_size AS  (
SELECT YEAR(DIFFERENTIATION_DATE) AS year, MAX(SIZE_OF_COLONY) AS max_s
FROM ECOLI_DATA
GROUP BY 1
ORDER BY 1)

# left join 
SELECT YEAR(DIFFERENTIATION_DATE) AS YEAR, (max_s - E.SIZE_OF_COLONY) AS YEAR_DEV, E.ID
FROM ECOLI_DATA E
LEFT JOIN max_size M ON YEAR(E.DIFFERENTIATION_DATE) = M.year ## YEAR 안에 테이블 구분
ORDER BY 1,2