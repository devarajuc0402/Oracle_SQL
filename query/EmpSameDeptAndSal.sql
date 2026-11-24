
select dept_id, salary, count(salary)
from employee
group by dept_id, salary
having count(salary) > 1;

select e.*
from employee e
where (e.dept_id, e.salary) IN (
    select dept_id, salary
    from employee
    group by dept_id, salary
    having count(salary) > 1
);
