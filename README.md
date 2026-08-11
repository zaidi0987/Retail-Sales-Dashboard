# 🛍️ Retail Sales Analytics Dashboard

## 📌 Overview

This project demonstrates an end-to-end retail sales analytics workflow using the **UC Irvine Online Retail Dataset (1.06M+ records)**. The pipeline ingests raw sales data into Snowflake, performs data cleaning and feature engineering in Alteryx, loads the processed data into Google BigQuery, and visualizes business insights through interactive Tableau dashboards.

---

## 🚀 Tech Stack

- SQL
- Snowflake
- Alteryx
- Google BigQuery
- Tableau
- ODBC
- Windows Task Scheduler

---

## 📂 Dataset

- **Source:** UC Irvine Machine Learning Repository
- **Dataset:** Online Retail Dataset
- **Records:** 1,067,372 retail transactions

---

# Project Workflow

## 1️⃣ Data Ingestion

- Imported the UC Irvine Retail Sales dataset into Snowflake.
- Created the warehouse, database, schema, and tables.
- Validated data loading using SQL queries.

---

## 2️⃣ Data Transformation

Using **Alteryx**, the dataset was prepared for analytics by:

- Handling missing values.
- Removing duplicate records.
- Standardizing product descriptions using fuzzy matching.
- Creating derived features including:
  - Day
  - Month
  - Hour
  - Total Spend
  - Total Return

---

## 3️⃣ Data Loading

- Loaded the transformed dataset into Google BigQuery.
- Validated data integrity using SQL.
- Updated only new records using primary-key matching.

---

## 4️⃣ Automation

- Automated the workflow using **Windows Task Scheduler**.
- Scheduled the ETL process to execute every Sunday at **3:00 AM**.

---

## 5️⃣ Dashboard Development

Built an interactive Tableau dashboard connected to BigQuery for business reporting.

### Dashboard Highlights

- 📈 Monthly Sales & Returns
- 🔝 Top 5 Products by Sales
- 🌍 Country-wise Sales Distribution
- ⏰ Peak Sales Hours
- 📅 Day-wise Sales Trends

---

## 📊 Business Insights

The dashboard enables users to:

- Monitor monthly sales performance.
- Analyze customer purchasing patterns.
- Identify top-selling products.
- Compare sales across different countries.
- Understand peak business hours.
- Track sales and returns using dynamic filters.

---

## Repository Structure

```
Retail-Sales-Analytics/
│
├── Data/
├── SQL/
├── Alteryx Workflow/
├── Tableau Dashboard/
├── Images/
├── README.md
```

---

## 📷 Dashboard Preview

> Add screenshots of your Tableau dashboard here.

Example:

```
/Images/dashboard.png
```

---

## ⭐ Key Skills Demonstrated

- SQL
- Data Cleaning
- Data Transformation
- Feature Engineering
- ETL
- Data Warehousing
- Business Intelligence
- Tableau Dashboard Development
- BigQuery
- Snowflake

---

## 📬 Contact

**Mohd Zaid Chaudhary**

- LinkedIn: *(Add your LinkedIn URL)*
- Portfolio: *(Add your Portfolio URL)*
- Email: *(Add your Email)*
