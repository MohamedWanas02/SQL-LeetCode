--MySQL

SELECT a1.machine_id, round(avg(a2.timestamp-a1.timestamp), 3) as processing_time
FROM Activity a1 JOIN Activity a2
USING(machine_id, process_id)
WHERE a1.activity_type ="start"
AND a2.activity_type = "end"
GROUP BY a1.machine_id


--PostgreSQL

SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp)::numeric, 3) AS processing_time
FROM Activity a1 JOIN Activity a2
USING(machine_id, process_id)
WHERE a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY machine_id

-- SQL Server

SELECT a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1
JOIN Activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY a1.machine_id;





