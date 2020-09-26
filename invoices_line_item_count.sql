--show all invoices and include # of line items

select i.invoiceId, 
    count(1) as CountOfLineItems
from invoice i, invoiceLine il
where i.invoiceId = il.invoiceId
group by i.invoiceId