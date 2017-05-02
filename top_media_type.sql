-- 27. Provide a query that shows the most purchased Media Type.
SELECT MediaType.Name as MediaName, count(InvoiceLine.InvoiceLineId) as Purchased
FROM MediaType, InvoiceLine, Track
WHERE MediaType.MediaTypeId = Track.MediaTypeId
AND Track.TrackId = InvoiceLine.TrackId
GROUP BY MediaName ORDER BY Purchased desc limit 1;