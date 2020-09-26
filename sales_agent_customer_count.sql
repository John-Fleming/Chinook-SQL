--count of customer assigned to each sales agent

select e.employeeId,
    concat(e.FirstName, ' ', e.LastName) as SalesAgent,
    count(1) as TotalCustomers
from employee e 
    join customer c
        on e.EmployeeId = c.SupportRepId
group by e.EmployeeId, concat(e.FirstName, ' ', e.LastName)