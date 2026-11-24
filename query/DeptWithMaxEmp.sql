
select dept_id, count(*)
from employee
group by dept_id
order by count(*) desc
fetch next 1 rows only;

select *
from (
    select dept_id, count(*) as emp_count
    from employee
    group by dept_id
    order by emp_count desc
)
where rownum <= 1;

select *
from (select dept_id, 
        count(*) emp_count,
        dense_rank() over(
            order by count(*) desc
        ) as rnk
        from employee e
        group by dept_id
)
where rnk = 1;
