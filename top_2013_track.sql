--most purchases track of 2013
select il.TrackId, count(1) as Purchases, t.name as TrackName, il.UnitPrice as SalePrice
from InvoiceLine il
    join Invoice i
        on il.InvoiceId = i.InvoiceId
    join track t
        on il.TrackId = t.TrackId
where year(i.InvoiceDate) = 2013
group by il.TrackId, t.name, il.UnitPrice
order by SalePrice desc