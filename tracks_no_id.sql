-- display all tracks with album name, media type, and genre

select t.name as TrackName, 
    al.title as AlbumTitle,
    mt.Name as MediaType,
    g.Name as Genre
from track t, album al, MediaType mt, genre g
where t.AlbumId = al.AlbumId
    and t.MediaTypeId = mt.MediaTypeId
    and t.GenreId = g.GenreId
order by AlbumTitle