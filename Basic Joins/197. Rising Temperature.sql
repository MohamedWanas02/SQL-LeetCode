-- MySQL
-- DATEDIFF(end, start)

SELECT t.id
FROM Weather y CROSS JOIN Weather t
WHERE DATEDIFF(t.recordDate,y.recordDate) = 1
AND t.temperature > y.temperature;


-- PostgreSQL
-- Subtracting two DATE values returns an integer number of days

SELECT t.id
FROM weather y
CROSS JOIN weather t
WHERE t.recordDate - y.recordDate = 1
AND t.temperature > y.temperature;


-- SQL Server
SELECT t.id
FROM Weather y
JOIN Weather t
ON DATEDIFF(day, y.recordDate, t.recordDate) = 1
WHERE t.temperature > y.temperature;



