--show only employees who are sales agents
select *
from employee
where title like '%sales%' and title like '%agent%'
