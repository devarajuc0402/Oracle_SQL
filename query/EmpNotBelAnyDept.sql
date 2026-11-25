
select *
from employee
where dept_id is null;

select *
from employee e
where not exists(
    select *
    from department d
    where e.dept_id = d.dept_id
);
