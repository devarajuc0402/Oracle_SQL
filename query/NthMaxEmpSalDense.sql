

select *
from (select e.*,
		DENSE_RANK() OVER (order by salary desc) as rnk
	from employee e
)
where rnk = :N;
