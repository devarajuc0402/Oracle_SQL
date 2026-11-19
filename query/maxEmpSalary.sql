

select * 
from employee
order by salary desc
fetch next 1 rows only;


select max(salary)
from employee;
