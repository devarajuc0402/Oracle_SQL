
select *
from (select d.dept_name, d.dept_id, 
        avg(e.salary) as avg_sal,
        dense_rank() over(
            order by avg(e.salary) desc
        ) as rnk
    from employee e, department d
    where e.dept_id = d.dept_id
    group by d.dept_name, d.dept_id
)
where rnk = 2;
