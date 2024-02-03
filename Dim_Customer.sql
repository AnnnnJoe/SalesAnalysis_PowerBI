-- Cleansed 'DimCustomer' table
SELECT 
  c.[CustomerKey] --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,c.[FirstName] AS First_Name 
  --,[MiddleName]
  ,c.[LastName] AS Last_Name
  ,CONCAT(c.FirstName, ' ', c.LastName) AS Full_Name --created full name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  ,c.[DateFirstPurchase] AS Date_FirstPurchase 
  --,[CommuteDistance]
  ,g.City AS Customer_City -- Joined customer city from 'DimGeography' table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN [dbo].[DimGeography] AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey -- ordered data by CustomerKey in Ascending order
