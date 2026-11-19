
select d.*
from department d
left join employee e
    on e.dept_id = d.dept_id
where e.emp_id is null;
