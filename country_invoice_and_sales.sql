select BillingCountry, sum(Total) InvoiceTotal, count(1) as CountOfInvoice, AVG(total), max(total), min(total)
from invoice
group by BillingCountry
order by InvoiceTotal desc


--top country - add top 1 to the select statement
