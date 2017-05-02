--23. Which country's customers spent the most?
SELECT TopSpender.Country as Country, MAX(TopSpender.MoneySpent) as 'Sales'
FROM (SELECT i.BillingCountry as 'Country', SUM(i.Total) as MoneySpent
FROM Invoice i
GROUP BY i.BillingCountry) as TopSpender;