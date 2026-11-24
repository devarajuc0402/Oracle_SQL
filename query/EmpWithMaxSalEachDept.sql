
select *
from (select e.*, 
        dense_rank() over(
            partition by dept_id
            order by salary desc) as rnk
    from employee e
)
where rnk = 1;
