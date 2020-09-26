--shows the total number of tracks in each playlist.
--The Playlist name should be include on the resultant table

select playlist.name as PlaylistName,
    count(1) as NumberOfTracks
from playlist, playlistTrack
where playlist.playlistId = playlistTrack.playlistId
group by playlist.name