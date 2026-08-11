-- BigQuery SQL Queries for Verifying Data Ingestion into certain-root-400722.ETL_Dataset.Retail_Table1

-- Retrieve Top 10 Rows (to get an initial glance at your data)
SELECT * FROM `certain-root-400722.ETL_Dataset.Retail_Table1` LIMIT 10;

-- Count Total Rows (to verify the number of records ingested)
SELECT COUNT(*) AS total_rows FROM `certain-root-400722.ETL_Dataset.Retail_Table1`;

-- Check Distinct Invoices (to understand the variety and uniqueness of invoices)
SELECT DISTINCT Invoice FROM `certain-root-400722.ETL_Dataset.Retail_Table1`;

-- Identify Null Values (to ensure there are no missing values post-transformation)
SELECT COUNT(*) AS null_records
FROM `certain-root-400722.ETL_Dataset.Retail_Table1`
WHERE Invoice IS NULL OR StockCode IS NULL OR Description IS NULL;

-- Quantity Aggregation (to get insights on quantities across invoices)
SELECT Invoice, SUM(Quantity) AS TotalQuantity 
FROM `certain-root-400722.ETL_Dataset.Retail_Table1`
GROUP BY Invoice;

-- Retrieve Specific Invoice Data (to validate specific records)
SELECT * 
FROM `certain-root-400722.ETL_Dataset.Retail_Table1`
WHERE Invoice = '489434';

-- Records by Country (for understanding geographical distribution)
SELECT Country, COUNT(*) AS record_count 
FROM `certain-root-400722.ETL_Dataset.Retail_Table1`
GROUP BY Country;

-- Check Unique Customers (to understand the variety of customers)
SELECT DISTINCT `Customer ID` FROM `certain-root-400722.ETL_Dataset.Retail_Table1`;

-- Optional: Aggregation by Date (if you've ingested time-based data and want to verify its distribution)
SELECT FORMAT_TIMESTAMP('%Y-%m-%d', TIMESTAMP(InvoiceDate)) AS formatted_date, COUNT(*) AS record_count
FROM `certain-root-400722.ETL_Dataset.Retail_Table1`
GROUP BY formatted_date
ORDER BY formatted_date;

