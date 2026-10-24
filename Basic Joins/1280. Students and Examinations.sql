--MySQL 
--PostgreSQL


SELECT s.student_id, s.student_name, su.subject_name, COUNT(e.student_id) AS attended_exams
FROM Students s CROSS JOIN Subjects su LEFT JOIN Examinations e
USING (student_id, subject_name)
GROUP BY s.student_id, s.student_name, su.subject_name 
ORDER BY s.student_id, s.student_name, su.subject_name;


--SQL Server

SELECT S.student_id, S.student_name ,SU.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students S CROSS JOIN Subjects SU LEFT JOIN Examinations E
ON S.student_id = E.student_id
AND SU.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, SU.subject_name
ORDER BY S.student_id, SU.subject_name;

