-- 11.  Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.InvoiceLineId) as 'Number of line items'
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId;