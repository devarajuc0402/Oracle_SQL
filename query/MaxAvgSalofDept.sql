
select d.dept_name, d.dept_id, avg(salary) as avg_sal
from employee e, department d
where e.dept_id = d.dept_id
group by d.dept_name, d.dept_id
order by avg_sal desc
fetch next 1 rows only;


select *
from (select d.dept_name, d.dept_id, avg(e.salary) as avg_sal, 
    dense_rank() over(
        order by avg(e.salary) desc
    ) as rnk
    from employee e join department d
        on e.dept_id = d.dept_id
    group by d.dept_name, d.dept_id
)
where rnk = 1
;
