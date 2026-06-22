USE SectorFinanceDB;
GO

SELECT financial_metric, *
FROM dbo.aapl_income_statement
WHERE financial_metric IN ('Total Revenue', 'Net Income From Continuing Operation', 'Net Income');

USE SectorFinanceDB;
GO

-- Create a dynamic view that combines core metrics for comparison
CREATE OR ALTER VIEW v_CorporateFinancialSummary AS
SELECT 
    'AAPL' AS Ticker,
    financial_metric,
    [2025-09-30] AS FY2025,
    [2024-09-30] AS FY2024,
    [2023-09-30] AS FY2023,
    [2022-09-30] AS FY2022
FROM dbo.aapl_income_statement
WHERE financial_metric IN ('Total Revenue', 'Gross Profit', 'Net Income')

UNION ALL

SELECT 
    'AAPL' AS Ticker,
    financial_metric,
    [2025-09-30] AS FY2025,
    [2024-09-30] AS FY2024,
    [2023-09-30] AS FY2023,
    [2022-09-30] AS FY2022
FROM dbo.aapl_balance_sheet
WHERE financial_metric IN ('Total Assets', 'Total Liabilities Net Minority Interest', 'Stockholders Equity');
GO

SELECT * FROM v_CorporateFinancialSummary;