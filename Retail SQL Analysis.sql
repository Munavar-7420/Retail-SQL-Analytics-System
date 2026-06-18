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

--16. Year-over-Year Revenue

SELECT
    YEAR_ID,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

--17. Top 5 Customers in Each Country

SELECT
    COUNTRY,
    CUSTOMERNAME,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY COUNTRY, CUSTOMERNAME
ORDER BY COUNTRY, Revenue DESC;

--18. Average Revenue per Customer

SELECT
    ROUND(AVG(Customer_Revenue),2) AS Avg_Revenue_Per_Customer
FROM (
    SELECT
        CUSTOMERNAME,
        SUM(SALES) AS Customer_Revenue
    FROM Retail_Sales_data
    GROUP BY CUSTOMERNAME
) t;

--19. Most Popular Deal Size

SELECT
    DEALSIZE,
    COUNT(*) AS Total_Orders
FROM Retail_Sales_data
GROUP BY DEALSIZE
ORDER BY Total_Orders DESC;

--20. Revenue by Order Status

SELECT
    STATUS,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY STATUS
ORDER BY Revenue DESC;

--21. Top 10 Customers by Number of Orders

SELECT
    CUSTOMERNAME,
    COUNT(DISTINCT ORDERNUMBER) AS Total_Orders
FROM Retail_Sales_data
GROUP BY CUSTOMERNAME
ORDER BY Total_Orders DESC
LIMIT 10;

--22. Highest Revenue Month

SELECT
    YEAR_ID,
    MONTH_ID,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY YEAR_ID, MONTH_ID
ORDER BY Revenue DESC
LIMIT 1;

--23. Revenue Contribution by Product Line (%)

SELECT
    PRODUCTLINE,
    ROUND(
        SUM(SALES) * 100 /
        (SELECT SUM(SALES) FROM Retail_Sales_data),
        2
    ) AS Revenue_Percentage
FROM Retail_Sales_data
GROUP BY PRODUCTLINE
ORDER BY Revenue_Percentage DESC;

--24. Top Country by Revenue

SELECT
    COUNTRY,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY COUNTRY
ORDER BY Revenue DESC
LIMIT 1;

--25. Customer Lifetime Value (CLV Approximation)

SELECT
    CUSTOMERNAME,
    COUNT(DISTINCT ORDERNUMBER) AS Orders_Count,
    ROUND(SUM(SALES),2) AS Lifetime_Value
FROM Retail_Sales_data
GROUP BY CUSTOMERNAME
ORDER BY Lifetime_Value DESC
LIMIT 10;

--26. Product Line by Average Order Value

SELECT
    PRODUCTLINE,
    ROUND(AVG(SALES),2) AS Avg_Order_Value
FROM Retail_Sales_data
GROUP BY PRODUCTLINE
ORDER BY Avg_Order_Value DESC;

--27. Territory Market Share

SELECT
    TERRITORY,
    ROUND(
        SUM(SALES) * 100 /
        (SELECT SUM(SALES) FROM Retail_Sales_data),
        2
    ) AS Market_Share_Percentage
FROM Retail_Sales_data
GROUP BY TERRITORY
ORDER BY Market_Share_Percentage DESC;

--28. Top Product in Each Product Line

SELECT
    PRODUCTLINE,
    PRODUCTCODE,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY PRODUCTLINE, PRODUCTCODE
ORDER BY PRODUCTLINE, Revenue DESC;

--29. Average Quantity Ordered by Deal Size

SELECT
    DEALSIZE,
    ROUND(AVG(QUANTITYORDERED),2) AS Avg_Quantity
FROM Retail_Sales_data
GROUP BY DEALSIZE
ORDER BY Avg_Quantity DESC;

--30. Monthly Revenue Growth Trend

SELECT
    YEAR_ID,
    MONTH_ID,
    ROUND(SUM(SALES),2) AS Revenue
FROM Retail_Sales_data
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;
