# start 테이블 (SUM) : 기계별 star 시간의 합 
WITH start AS(
SELECT machine_id, process_id , timestamp 
FROM Activity
WHERE activity_type = 'start'
GROUP BY machine_id,process_id
),
end AS(
# end 테이블 : 기계별 end 시간의 합
SELECT machine_id, process_id,  timestamp 
FROM Activity
WHERE activity_type = 'end'
GROUP BY machine_id,process_id
),
base AS(
SELECT machine_id, process_id
FROM Activity
GROUP BY machine_id, process_id)

SELECT B.machine_id, ROUND(AVG(E.timestamp- S.timestamp),3) AS processing_time 
FROM base B
LEFT JOIN start S ON B.machine_id = S.machine_id AND B.process_id = S.process_id
LEFT JOIN end E ON E.machine_id = S.machine_id AND E.process_id = S.process_id
GROUP BY machine_id