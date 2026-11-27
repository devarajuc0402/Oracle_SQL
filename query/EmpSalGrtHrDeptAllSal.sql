
select * 
from employee
where salary > all (
    select e.salary
    from employee e, department d
    where d.dept_name = 'HR' and
        e.dept_id = d.dept_id
);
