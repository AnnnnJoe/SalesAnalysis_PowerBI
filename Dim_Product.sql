-- Cleansed 'DIMProduct' table

SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS Product_ItemCode, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS Product_Name, 
  pc.EnglishProductCategoryName AS Product_Category, -- Joined from 'DimProductCategory' table
  s.EnglishProductSubcategoryName AS Product_SubCategory, -- Joined from 'DimProductSubcategory' table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS Product_Color,
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] AS Product_Size,
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] AS Product_Line,
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] AS Product_ModelName,
  --,[LargePhoto]
  p.[EnglishDescription] AS Product_Description, 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL(p.Status, 'Outdated') AS Product_Status -- replace NULL values as 'Outdated'
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN [dbo].[DimProductSubcategory] AS s ON p.ProductSubcategoryKey = s.ProductSubcategoryKey 
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON s.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey -- order data by ProductKey in ascending order


