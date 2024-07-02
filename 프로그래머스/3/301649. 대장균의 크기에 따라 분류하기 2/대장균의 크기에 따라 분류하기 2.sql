WITH size_ranking AS(
SELECT *, ROW_NUMBER() OVER(ORDER BY SIZE_OF_COLONY DESC) AS row_desc
FROM ECOLI_DATA)

SELECT ID, 
        CASE WHEN row_desc <= ((SELECT COUNT(*) FROM size_ranking)*0.25 ) THEN 'CRITICAL'
             WHEN row_desc <= ((SELECT COUNT(*) FROM size_ranking)*0.5 ) THEN 'HIGH'
             WHEN row_desc <= ((SELECT COUNT(*) FROM size_ranking)*0.75 ) THEN 'MEDIUM'
             WHEN row_desc <= (SELECT COUNT(*) FROM size_ranking) THEN 'LOW' 
             END AS COLONY_NAME
FROM size_ranking
ORDER BY ID