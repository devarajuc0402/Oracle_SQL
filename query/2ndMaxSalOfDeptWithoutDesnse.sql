
select dept_id, max(salary)
from employee e
where salary < (
    select max(salary)
    from employee e1
    where e1.dept_id = e.dept_id
)
group by dept_id;

select *
from (select e.*, dense_rank() over(
        partition by e.dept_id
        order by e.salary desc
    ) as rnk
    from employee e
)
where rnk = 2;
