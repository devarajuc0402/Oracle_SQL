
select e.emp_name, e.dept_id, count(*)
from employee e
group by e.emp_name, e.dept_id
having count(*) > 1;
