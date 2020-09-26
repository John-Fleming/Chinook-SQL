--query that includes the purchased track name and artist name with each invoice line item.
select il.InvoiceLineId, il.InvoiceId, t.Name as PurchasedTrack, ar.Name as ArtistName
from invoiceLine il, track t
    join album al
        on t.AlbumId = al.AlbumId
    join artist ar 
        on al.ArtistId = ar.ArtistId
where il.TrackId = t.TrackId
order by il.InvoiceLineId