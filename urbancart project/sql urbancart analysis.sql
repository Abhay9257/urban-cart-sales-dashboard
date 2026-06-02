CREATE DATABASE urban_cart;

USE urban_cart;

CREATE TABLE urbancart_project (
    Order_ID VARCHAR(20),
    order_date DATE,
    Customer_Name VARCHAR(100),
    Gender VARCHAR(20),
    Age INT,
    State VARCHAR(50),
    City VARCHAR(50),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Sales DECIMAL(10,2),
    Cost_Price DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Delivery_Status VARCHAR(50)
);




select Age from urbancart_project;

SELECT SUM(Sales) AS Total_Sales
FROM urbancart_project;

SELECT SUM(Profit) AS Total_Profit
FROM urbancart_project;

SELECT COUNT(Order_ID) AS Total_Orders
FROM urbancart_project;

SELECT Product_Name,
SUM(Sales) AS Total_Sales
FROM urbancart_project
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT Product_Category,
SUM(Sales) AS Category_Sales
FROM urbancart_project
GROUP BY Product_Category;

SELECT State,
SUM(Profit) AS Total_Profit
FROM urbancart_project
GROUP BY State
ORDER BY Total_Profit DESC;

SELECT Gender,
SUM(Sales) AS Total_Sales
FROM urbancart_project
GROUP BY Gender;

SELECT Delivery_Status,
COUNT(*) AS Total_Orders
FROM urbancart_project
GROUP BY Delivery_Status;

SELECT Payment_Mode,
SUM(Sales) AS Total_Sales
FROM urbancart_project
GROUP BY Payment_Mode;

SELECT MONTH(order_date) AS Month_No,
SUM(Sales) AS Monthly_Sales
FROM urbancart_project
GROUP BY Month_No
ORDER BY Month_No;

SELECT 
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM urbancart_project;

select * from urbancart_project;