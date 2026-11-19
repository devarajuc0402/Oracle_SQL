

select *
from employee
order by salary desc
offset 1 rows
fetch next 1 rows only;

select max(salary)
from employee
where salary < (select max(salary)
		from employee
);
