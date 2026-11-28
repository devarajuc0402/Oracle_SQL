
select *
from employee
where salary < any (
    select salary 
    from employee e, department d
    where e.dept_id = d.dept_id and 
        d.dept_name = 'HR'
);


select *
from employee
where salary < all (
    select salary 
    from employee e, department d
    where e.dept_id = d.dept_id and 
        d.dept_name = 'HR'
);
