--show the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
select
    i.InvoiceId, i.Total as InvoiceTotal,
    concat(c.FirstName, ' ', c.LastName) as CustomerName,
    i.BillingCountry,
    concat(e.FirstName, ' ', e.LastName) as SalesAgent
from invoice i 
    join customer c
        on i.CustomerId = c.CustomerId
    join employee e
        on c.SupportRepId = e.EmployeeId
