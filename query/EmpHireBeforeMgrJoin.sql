
select distinct e1.*
from employee e1, employee e2
where e2.manager_id = e1.emp_id and
    e2.hire_date < e1.hire_date;


SELECT e2.*
FROM employee e1
JOIN employee e2
    ON e2.manager_id = e1.emp_id
WHERE e2.hire_date < e1.hire_date;
