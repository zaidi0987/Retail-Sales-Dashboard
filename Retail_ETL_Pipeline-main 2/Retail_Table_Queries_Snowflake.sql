-- SQL Queries for Retail_Table Data Verification

-- Retrieve Top 10 Rows (to see a sample of your data)
SELECT * FROM Retail_Table LIMIT 10;

-- Check Distinct Invoices (to understand the variety of invoices you have)
SELECT DISTINCT Invoice FROM Retail_Table;

-- Count Rows (to verify the number of records loaded)
SELECT COUNT(*) FROM Retail_Table;

-- Check for Null Values (to ensure no important data is missing)
SELECT COUNT(*) FROM Retail_Table WHERE Invoice IS NULL OR StockCode IS NULL OR Description IS NULL;

-- Aggregation on Quantity (to get insights into your data)
SELECT Invoice, SUM(Quantity) as TotalQuantity FROM Retail_Table GROUP BY Invoice;

-- Retrieve Specific Invoice Data
SELECT * FROM Retail_Table WHERE Invoice = '489434';

-- Retrieve Information for a Specific Country
SELECT * FROM Retail_Table WHERE Country = 'United Kingdom';

-- Check Unique Customers
SELECT DISTINCT "Customer ID" FROM Retail_Table;

-- Aggregation by Country (e.g., number of invoices per country)
SELECT Country, COUNT(DISTINCT Invoice) as NumInvoices FROM Retail_Table GROUP BY Country;

