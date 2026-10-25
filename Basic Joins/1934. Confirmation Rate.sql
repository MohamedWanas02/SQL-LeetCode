--MySQL

SELECT s.user_id, round(avg(IF(c.action="confirmed",1,0)),2) AS confirmation_rate
FROM Signups s LEFT JOIN Confirmations c 
using (user_id)
GROUP BY user_id;

--PostgreSQL

SELECT s.user_id, round(avg(CASE WHEN c.action= 'confirmed' THEN 1 ELSE 0 AND),2) AS confirmation_rate
FROM Signups s LEFT JOIN Confirmations c
USING (user_id)
GROUP BY user_id;
