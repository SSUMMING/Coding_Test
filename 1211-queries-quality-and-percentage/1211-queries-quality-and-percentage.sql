SELECT query_name, ROUND(SUM(qual)/COUNT(qual),2) AS quality, 
    ROUND(SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)/COUNT(qual) *100,2) AS poor_query_percentage 
FROM (SELECT *,(rating / position) AS qual
FROM Queries) AS A
WHERE query_name IS NOT NULL
GROUP BY query_name

