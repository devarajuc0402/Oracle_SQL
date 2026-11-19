

select *
from employee
order by salary desc
offset (:N - 1) rows
fetch next 1 rows only;

