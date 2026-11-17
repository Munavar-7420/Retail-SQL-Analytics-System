<div align="center">

# 📊 Retail SQL Analytics System

### Transactional retail sales analysis using MySQL to uncover revenue trends, top customers, and regional performance.

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data_Analysis-FF6F00?style=for-the-badge)
![Business Analytics](https://img.shields.io/badge/Business_Analytics-0A66C2?style=for-the-badge)

</div>

---

## 📌 Project Overview

This project analyzes retail sales data using SQL to uncover customer purchasing behavior, product performance, revenue trends, and regional sales performance.

The analysis was conducted using MySQL and focuses on generating actionable business insights from transactional sales data.

---

## 🎯 Objectives

✔ Identify Top 10 Customers by Revenue

✔ Analyze Monthly and Quarterly Sales Trends

✔ Determine Best-Selling Products

✔ Evaluate Revenue by Country and Territory

✔ Analyze Deal Size Performance

✔ Generate Business Insights for Decision-Making

---

## 🧰 Tools & Technologies

<p align="center">

<a href="https://www.mysql.com/">
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" width="50" height="50"/>
</a>

<a href="https://www.postgresql.org/">
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="50" height="50"/>
</a>

<a href="https://sqlite.org/">
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlite/sqlite-original.svg" width="50" height="50"/>
</a>

</p>

---

## 📂 Dataset

**Dataset:** Retail Sales Dataset (`Retail_Sales_data.csv`)

### Key Columns
- `ORDERNUMBER` | `ORDERDATE` | `SALES` | `DEALSIZE`
- `PRODUCTLINE` | `PRODUCTCODE`
- `CUSTOMERNAME` | `COUNTRY` | `TERRITORY`

---

## 🔄 Project Workflow

```text
Retail_Sales_data.csv
     │
     ▼
Import into MySQL
     │
     ▼
Data Validation & Cleaning
     │
     ▼
SQL Query Development (Aggregations, CTEs, Window Functions)
     │
     ▼
Sales & Customer Insights
```

---

## 📈 Key Analysis Performed

- **Customer Analysis:** Ranked Top 10 customers by total revenue and highest order volume.
- **Product Performance:** Evaluated revenue share and order frequency across product lines (Classic Cars, Vintage Cars, Motorcycles, etc.).
- **Time-Series Trends:** Tracked monthly and quarterly revenue growth along with Average Order Value (AOV).
- **Regional Breakdown:** Compared sales performance across EMEA, NA, APAC, and Japan territories.

---

## 📷 Dashboard Preview

### 📊 E-Commerce Dashboard

<img width="2074" height="1678" alt="E-Commerce Dashboard" src="https://github.com/user-attachments/assets/67b0249b-c972-42cc-b9d0-ff84b37dc57a" />

### 📈 Sales Performance Dashboard

<img width="721" height="360" alt="Sales Dashboard" src="https://github.com/user-attachments/assets/f1a75380-dce7-4093-b9f5-f3113fc8774c" />

### 💡 Business Insights

<img width="768" height="736" alt="Insights" src="https://github.com/user-attachments/assets/963d6aa6-8094-43a2-bff7-87ffa822fe52" />

### 🗂️ Data Model

<img width="1024" height="824" alt="Data Model" src="https://github.com/user-attachments/assets/28bd92c0-8fb8-4cbe-8c3c-a10d45f4598e" />

---

## 📁 Repository Structure

```text
Retail-SQL-Analytics-System/
│
├── Data/
│   └── Retail_Sales_data.csv
│
├── SQL/
│   └── retail_sales_analysis.sql
│
├── Pics/
├── LICENSE
└── README.md
```

---

## 🚀 Future Improvements

- RFM (Recency, Frequency, Monetary) Customer Segmentation in SQL
- Interactive Power BI Dashboard connected directly to MySQL
- Automated Monthly Revenue Reporting Views

---

## 👨‍💻 Author

**Munavar Patter**  
M.Sc. Student at SRH University | Former Data Analyst  
SQL • MySQL • Python • Power BI • Excel
