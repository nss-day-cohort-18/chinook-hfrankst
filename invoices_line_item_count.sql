--17. Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT Invoice.InvoiceId as 'Invoice', COUNT(InvoiceLine.InvoiceLineId) as '# of line items'
FROM Invoice 
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId;