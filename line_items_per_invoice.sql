select  InvoiceId, count(1) as LineItems 
from InvoiceLine
group by InvoiceId
