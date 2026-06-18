CREATE DATABASE Retail_SQL_Analysis
USE Retail_SQL_Analysis

--1. Total Revenue

SELECT 
  ROUND(SUM(SALES),2) AS Total_Revenue 
FROM Retail_Sales_data;

--2. Total Orders

SELECT 
  COUNT(DISTINCT ORDERNUMBER) AS Total_Orders 
FROM Retail_Sales_data;

--3. Top 10 Customers by Revenue

SELECT 
  CUSTOMERNAME, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY CUSTOMERNAME 
ORDER BY Revenue DESC LIMIT 10;

--4. Revenue by Country

SELECT 
  COUNTRY, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY COUNTRY 
ORDER BY Revenue DESC;

--5. Revenue by Territory

SELECT 
  TERRITORY, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY TERRITORY 
ORDER BY Revenue DESC;

--6. Monthly Sales Trend

SELECT 
  YEAR_ID, MONTH_ID, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY YEAR_ID, MONTH_ID 
ORDER BY YEAR_ID, MONTH_ID;

--7. Quarterly Revenue

SELECT 
  YEAR_ID, QTR_ID, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY YEAR_ID, QTR_ID 
ORDER BY YEAR_ID, QTR_ID;

--8. Best Selling Product Lines

SELECT 
  PRODUCTLINE, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY PRODUCTLINE 
ORDER BY Revenue DESC;

--9. Product Line Profitability Proxy

SELECT 
  PRODUCTLINE, SUM(QUANTITYORDERED) AS Units_Sold 
FROM Retail_Sales_data 
GROUP BY PRODUCTLINE 
ORDER BY Units_Sold DESC;

--10. Top 10 Products

SELECT 
  PRODUCTCODE, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY PRODUCTCODE 
ORDER BY Revenue DESC LIMIT 10;

--11. Sales by Deal Size

SELECT 
  DEALSIZE, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY DEALSIZE 
ORDER BY Revenue DESC;

--12. Order Status Analysis

SELECT 
  STATUS, COUNT(*) AS Total_Orders 
FROM Retail_Sales_data 
GROUP BY STATUS;

--13. Top 5 Cities

SELECT 
  CITY, ROUND(SUM(SALES),2) AS Revenue 
FROM Retail_Sales_data 
GROUP BY CITY 
ORDER BY Revenue DESC LIMIT 5;

--14. Average Order Value

SELECT 
  ROUND( SUM(SALES) / COUNT(DISTINCT ORDERNUMBER) ,2) AS Average_Order_Value 
FROM Retail_Sales_data;

--15. Best Customers by Quantity Purchased

SELECT 
  CUSTOMERNAME, SUM(QUANTITYORDERED) AS Total_Units 
FROM Retail_Sales_data 
GROUP BY CUSTOMERNAME 
ORDER BY Total_Units DESC LIMIT 10;
