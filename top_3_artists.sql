-- 26. Provide a query that shows the top 3 best selling artists.
SELECT Artist.Name as ArtistName, Count(InvoiceLine.InvoiceLineId) as Purchased
FROM Artist, InvoiceLine, Album, Track 
WHERE Artist.ArtistId = Album.ArtistId 
AND Album.AlbumId = Track.AlbumId
AND Track.TrackId = InvoiceLine.TrackId
GROUP BY ArtistName ORDER BY Purchased desc limit 3;