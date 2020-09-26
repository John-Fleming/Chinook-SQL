--sales agent with most sales in 2009

select top 1 e.EmployeeId,
    concat(e.FirstName, ' ', e.LastName) as SalesAgent,
    count(i.InvoiceId) as InvoiceCount, 
    sum(i.Total) as TotalSales
from employee e
    join customer c
        on e.EmployeeId = c.SupportRepId
    join invoice i
        on c.CustomerId = i.CustomerId
where year(i.InvoiceDate) = 2009
group by e.EmployeeId, concat(e.FirstName, ' ', e.LastName)
order by TotalSales desc