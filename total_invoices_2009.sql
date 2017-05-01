-- 8.  How many Invoices were there in 2009?
SELECT COUNT(i.InvoiceId) AS 'Number of Invoices'
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01' and '2009-12-31';