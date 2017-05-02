-- 12. Provide a query that includes the purchased track name with each invoice line item.
SELECT t.Name, i.InvoiceLineId
FROM Track t, InvoiceLine i
WHERE t.TrackId IS i.TrackId;