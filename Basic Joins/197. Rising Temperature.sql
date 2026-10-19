-- MySQL

SELECT t.id
FROM Weather y CROSS JOIN Weather t
WHERE DATEDIFF(t.recordDate,y.recordDate) = 1
AND t.temperature > y.temperature


-- PostgreSQL

SELECT t.id
FROM weather y
CROSS JOIN weather t

WHERE t.recordDate - y.recordDate = 1
AND t.temperature > y.temperature
