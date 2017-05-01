-- 4. Provide a query showing only the Employees who are Sales Agents.
SELECT c.SupportRepId, e.FirstName ||' '|| e.LastName as 'Sales Agent'
FROM Customer c 
LEFT JOIN Employee e 
WHERE e.EmployeeId 
IS c.SupportRepId 
GROUP BY c.SupportRepId;