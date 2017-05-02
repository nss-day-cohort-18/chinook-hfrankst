--25. Provide a query that shows the top 5 most purchased tracks over all.
SELECT Track.Name as TrackName, Count(InvoiceLine.InvoiceLineId) as Purchased
FROM InvoiceLine, Track 
WHERE Track.TrackId = InvoiceLine.TrackId 
GROUP BY Track.Name 
ORDER BY Purchased desc limit 5;