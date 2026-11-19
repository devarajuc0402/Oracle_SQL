

select dept_id, max(salary)
from employee e
group by dept_id;

select *
from (select e.*,
	DENSE_RANK() OVER (order by salary desc)
	from employee
	group by dept_id
)

select dept_id, max(salary)
from (select e.*,
	DENSE_RANK() OVER (
		order by e.salary desc
	)
	from employee e
)
group by dept_id;

select *
from (select e.*,
	DENSE_RANK() OVER (
		partition by e.dept_id
		order by e.salary desc
	) as rnk
	from employee e
)
where rnk = 1;
