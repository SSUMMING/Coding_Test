WITH process AS(
SELECT A.machine_id,  A.process_id, (A1.timestamp - A.timestamp) AS process
FROM Activity A 
JOIN Activity A1 ON A.machine_id = A1.machine_id AND A.process_id = A1.process_id AND A.timestamp < A1.timestamp
)
SELECT machine_id, ROUND(AVG(process),3) AS processing_time
FROM process
GROUp BY machine_id