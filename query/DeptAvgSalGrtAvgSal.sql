
select dept_id, avg(salary) as avg_sal
from employee
group by dept_id
having avg(salary) > (
    select avg(salary)
    from employee
);
