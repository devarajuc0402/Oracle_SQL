

select salary, count(salary) as count
from employee
group by salary 
having count(*) > 1;
