
select max(salary)
from employee;


select *
from (select e.*, dense_rank() over(
        order by salary desc
    ) as rnk 
    from employee e
)
where rnk = 1;


select *
from employee e1
where not exists (
    select *
    from employee e2
    where e2.salary > e1.salary
);
