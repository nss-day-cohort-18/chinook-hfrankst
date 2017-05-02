-- 20. Which sales agent made the most in sales over all?

SELECT Sales.EmployeeName, MAX(Sales.OverallSales)
FROM (SELECT ROUND(SUM(i.Total),2) as OverallSales, e.FirstName ||' '|| e.LastName as 'EmployeeName'
FROM Invoice i, Employee e, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
GROUP BY EmployeeName ORDER BY OverallSales desc) as Sales;