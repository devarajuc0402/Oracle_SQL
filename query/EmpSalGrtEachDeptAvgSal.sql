
// provide duplicate salaries
select *
from employee
where salary > (select avg(salary)
    from employee e, department d
    where e.dept_id = d.dept_id
);

// distinct salary only
select *
from (select e.*,
    avg(salary) over(
        partition by dept_id
    ) as dept_avg
    from employee e
)
where salary > dept_avg;
