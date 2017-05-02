-- 7. Provide a query that shows the Invoice Total, Customer name, 
--    Country and Sale Agent name for all invoices and customers.
SELECT c.FirstName ||" "|| c.LastName as 'Customer', c.Country, i.Total, e.FirstName ||" "|| e.LastName as 'Sales Agent'
FROM Customer c
INNER JOIN Employee e
INNER JOIN Invoice i
WHERE c.SupportRepId = e.EmployeeId;