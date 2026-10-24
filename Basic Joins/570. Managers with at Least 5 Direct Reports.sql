--MySQL

SELECT e.name
FROM Employee e JOIN Employee emp
ON e.id = emp.managerId
GROUP BY emp.managerId
HAVING COUNT(emp.managerId) >=5;


--SQL Server

SELECT e.name
FROM Employee e JOIN Employee em
ON e.id = em.managerId 
GROUP BY e.name, em.managerId 
HAVING COUNT(*) >= 5;


--Other Solution

SELECT name FROM Employee
WHERE id IN (
    SELECT managerId FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5);


