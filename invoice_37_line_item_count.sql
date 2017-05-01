-- 10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.InvoiceLineId) as 'Number of line items'
FROM InvoiceLine
WHERE InvoiceLine.InvoiceId IS 37;