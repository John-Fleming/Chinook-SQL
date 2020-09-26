--query that COUNTs the number of line items for Invoice ID 37
select  count(1) as LineItems 
from InvoiceLine
where InvoiceId = 37