--18. Provide a query that shows total sales made by each sales agent.
SELECT e.FirstName ||' '|| e.LastName as 'Sales Agent', ROUND(SUM(i.Total), 2) as 'Sales Total'
FROM Customer c 
JOIN Invoice i 
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
WHERE c.CustomerId IS i.CustomerId
GROUP BY c.SupportRepId;