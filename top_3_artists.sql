select * from invoiceLine
select * from invoice
select * from track
select * from artist

select ar.Name as ArtistName,
    count(1) as Purchases, 
    t.name as TrackName,
    il.UnitPrice as SalePrice
from invoiceLine il
    join invoice i
        on il.InvoiceId = i.InvoiceId
    join track t
        on il.TrackId = t.TrackId
    join album al
        on t.AlbumId = al.AlbumId
    join artist ar
        on al.ArtistId = ar.ArtistId
group by ar.Name, t.name, il.UnitPrice
order by SalePrice desc