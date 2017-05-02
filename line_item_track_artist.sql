-- 13.  Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Artist.ArtistId = Album.ArtistId
GROUP BY InvoiceLine.InvoiceLineId;