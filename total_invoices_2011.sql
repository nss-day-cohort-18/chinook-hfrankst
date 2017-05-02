-- 8.  How many Invoices were there in 2011?
SELECT COUNT(i.InvoiceId) AS 'Number of Invoices'
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01' and '2011-12-31';