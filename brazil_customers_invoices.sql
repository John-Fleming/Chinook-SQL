--Invoices of customers who are from Brazil. 
--columns: customer's full name, Invoice ID, Date of the invoice and billing country
select concat(c.FirstName, ' ', c.LastName) as FullName, 
i.InvoiceId, 
i.InvoiceDate, 
i.BillingCountry
from customer c
    join invoice i
        on c.CustomerId = i.CustomerId
where country like 'Brazil'
order by FullName ASC