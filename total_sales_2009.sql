-- 9. What are the respective total sales for each of those years?
SELECT i.InvoiceDate, SUM(i.Total) as 'Sales Total'
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01' and '2009-12-31';