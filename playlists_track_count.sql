-- 15. Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
SELECT DISTINCT Playlist.PlaylistId, Playlist.Name AS 'Playlist', COUNT(PlaylistTrack.TrackId) AS '# of Tracks'
FROM Playlist
LEFT JOIN PlaylistTrack on Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.PlaylistId;