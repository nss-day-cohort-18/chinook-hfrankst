-- 6. Provide a query that shows the invoices associated with each sales agent. 
--    The resultant table should include the Sales Agent's full name.
SELECT i.InvoiceId, e.FirstName ||" "|| e.LastName as 'Sales Agent' 
FROM Invoice i 
INNER JOIN Employee e
INNER JOIN Customer c
WHERE c.SupportRepId = e.EmployeeId;