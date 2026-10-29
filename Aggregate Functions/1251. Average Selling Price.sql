--Mysql 

SELECT p.product_id, ifnull(round(sum(units*price)/sum(units),2),0) as average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;

--PostgreSQL

SELECT p.product_id, COALESCE(round(sum(p.price * u.units)::numeric / sum(u.units), 2), 0) AS  average_price
FROM Prices p LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date 
GROUP BY p.product_id

--SQL Server

SELECT p.product_id,
       COALESCE(
           CAST(SUM(u.units * p.price) * 1.0 / NULLIF(SUM(u.units), 0) AS DECIMAL(10, 2)),0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;







