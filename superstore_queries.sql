SELECT VERSION();
CREATE DATABASE IF NOT EXISTS superstore;
USE superstore;
SELECT DATABASE();
SELECT COUNT(*) FROM sales;
SHOW VARIABLES LIKE 'local_infile';
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 5;
DESCRIBE sales;
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) AS Total_Orders
FROM sales;
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales;
DESCRIBE sales;
SELECT COUNT(*) AS Total_Records
FROM sales;
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM sales;
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT 
    Segment,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    Sub_Category,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;
SELECT 
    Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Discount
ORDER BY Discount;
SELECT 
    STR_TO_DATE(Order_Date, '%d-%m-%Y') AS Order_Date_Converted
FROM sales
LIMIT 5;
SELECT
    DATE_FORMAT(STR_TO_DATE(Order_Date, '%d-%m-%Y'), '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Sales_Month
ORDER BY Sales_Month;
SELECT
    DATE_FORMAT(STR_TO_DATE(Order_Date, '%d-%m-%Y'), '%Y-%m') AS Sales_Month,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Sales_Month
ORDER BY Sales_Month;

