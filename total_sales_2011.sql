-- 9. What are the respective total sales for each of those years?
SELECT i.InvoiceDate, SUM(i.Total) as 'Sales Total'
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01' and '2011-12-31';