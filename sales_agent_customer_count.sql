-- 21. Provide a query that shows the count of customers assigned to each sales agent.
SELECT e.FirstName ||' '|| e.LastName as 'Sales Agent', COUNT(c.CustomerId) as '# of Customers'
FROM Employee e, Customer c
WHERE c.SupportRepId = e.EmployeeId
GROUP BY c.SupportRepId;