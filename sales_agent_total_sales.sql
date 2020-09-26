--total sales by each sales agent

select e.EmployeeId,
    concat(e.FirstName, ' ', e.LastName) as SalesAgent,
    count(i.InvoiceId) as InvoiceCount, 
    sum(i.Total) as TotalSales
from employee e
    join customer c
        on e.EmployeeId = c.SupportRepId
    join invoice i
        on c.CustomerId = i.CustomerId
group by e.EmployeeId, concat(e.FirstName, ' ', e.LastName)
order by TotalSales desc

--to get top salesperson add 'Top 1' after select