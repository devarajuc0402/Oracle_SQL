

select e1.emp_name as emp_name, e1.salary as emp_sal,
    e2.emp_name as mgr_name, e2.salary as mgr_sal
from employee e1, employee e2
where e1.manager_id = e2.emp_id and
    e1.salary > e2.salary;
