--what were the total sales in 2009 and 2011
select 
    [Invoice Year] = year(InvoiceDate),
    [Invoice Count] = count(1),
    [Total Sales] = sum(Total)
from invoice
where year(InvoiceDate) = 2009 or year(InvoiceDate) = 2011
group by year(InvoiceDate)