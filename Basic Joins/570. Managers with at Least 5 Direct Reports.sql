select e.name
from Employee e join Employee emp
on e.id = emp.managerId
having count(emp.managerId) >=5
