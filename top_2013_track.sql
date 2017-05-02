--24. Provide a query that shows the most purchased track of 2013.
SELECT Purchased.TrackName, MAX(Purchased.TrackCount)
FROM (SELECT Track.Name AS TrackName, Count(InvoiceLine.TrackId) as TrackCount, strftime('%Y', Invoice.InvoiceDate) as InvoiceYear
FROM Track, InvoiceLine, Invoice
WHERE Track.TrackId = InvoiceLine.TrackId 
AND InvoiceYear = '2013' 
Group BY Track.Name) as Purchased;