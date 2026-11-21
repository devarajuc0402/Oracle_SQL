

select emp.*
from employee emp, employee mgr
where emp.manager_id = mgr.emp_id and 
	emp.salary > mgr.salary;


