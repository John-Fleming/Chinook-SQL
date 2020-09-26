--show the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.
select 
    concat(e.FirstName, ' ', e.LastName) as SalesAgent,
    i.InvoiceId, i.CustomerId, i.Total
from employee e
    join customer c
        on e.EmployeeId = c.SupportRepId
    join invoice i
        on c.CustomerId = i.CustomerId
order by SalesAgent ASC