-- 19. Which sales agent made the most in sales in 2009?
-- the subquery is given the alias of Sales and the different aliases that are within it can be accessed with dot notation. 
SELECT MAX(Sales.TotalSales) as TopSales, Sales.EmployeeName
FROM (SELECT SUM(i.Total) as TotalSales, e.FirstName ||' '|| e.LastName as 'EmployeeName', strftime('%Y', i.InvoiceDate) as InvoiceYear
FROM Invoice i, Employee e, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND InvoiceYear = '2009'
GROUP BY EmployeeName
ORDER BY TotalSales desc) as Sales;