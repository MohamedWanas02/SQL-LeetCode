# MySQL

SELECT query_name, round(avg(rating / position),2) AS quality,
round(sum(IF(rating<3,1,0))*100/COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;

--PostgreSQL	

SELECT query_name, round(avg(rating::numeric/ position),2) AS quality,
round(sum(CASE WHEN rating <3 THEN 1 ELSE 0 END )*100.0/COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
