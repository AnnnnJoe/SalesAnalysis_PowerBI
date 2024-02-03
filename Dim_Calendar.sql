-- Cleansed 'DimDate' table
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date 
  --,[DayNumberOfWeek]
  --,[EnglishDayNameOfWeek]
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  ,[WeekNumberOfYear] AS Week_No
  ,[EnglishMonthName] AS Month
  ,LEFT(EnglishMonthName, 3) AS Month_short
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] AS Month_No
  ,[CalendarQuarter] AS Quarter
  ,[CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2022

