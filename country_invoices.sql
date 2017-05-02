-- 14. Provide a query that shows the # of invoices per country. HINT: GROUP BY
SELECT DISTINCT i.BillingCountry, COUNT(i.InvoiceId) as '# of Invoices'
FROM Invoice i
GROUP BY i.BillingCountry;