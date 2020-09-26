--how many invoices in 2009 and 2011
select 
    [Invoice Year] = year(InvoiceDate),
    [Invoice Count] = count(year(InvoiceDate))
from invoice
where year(InvoiceDate) = 2009 or year(InvoiceDate) = 2011
group by year(InvoiceDate)
