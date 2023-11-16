Create Database Netflix
--- Data Profiling 
SELECT * FROM Netflix_tbl

--- TAsk 1 Total Subscription
SELECT COUNT(User_ID) FROM Netflix_tbl

---Task 2  Subscription by country
SELECT Country,  COUNT(User_ID) AS "Number Of Subscription" FROM Netflix_tbl
GROUP BY Country
ORDER BY COUNT(User_ID) DESC;

--- Task 3  Subscription by gender
SELECT Gender,  COUNT(User_ID) AS "Number Of Subscription" FROM Netflix_tbl
GROUP BY Gender
ORDER BY COUNT(User_ID) DESC;

---- Task 4 Subscription by age
SELECT Age,  COUNT(User_ID) AS "Number Of Subscription" FROM Netflix_tbl
GROUP BY Age
ORDER BY COUNT(User_ID) DESC;

------Task 5    Subscription by device
SELECT Device,  COUNT(User_ID) AS "Number Of Subscription" FROM Netflix_tbl
GROUP BY Device
ORDER BY COUNT(User_ID) DESC; 

---- Task 6   Sum of Monthly Revenue by Device (SMRD)
SELECT Device, MONTH(Join_Date) AS Join_Month, SUM(Monthly_Revenue) AS Total_Monthly_Revenue FROM Netflix_tbl
GROUP BY Device,MONTH(Join_Date) 
ORDER BY Join_Month, Total_Monthly_Revenue DESC

---- Task 7 Sum of Monthly Revenue by Country (SMRC)
SELECT Country, MONTH(Join_Date) AS Join_Month, SUM(Monthly_Revenue) AS Total_Monthly_Revenue FROM Netflix_tbl
GROUP BY Country,MONTH(Join_Date) 
ORDER BY Join_Month, Total_Monthly_Revenue DESC

--- Task 8 Sum of Monthly Revenue by Country and Gender (SMRCG)
SELECT Country, Gender, MONTH(Join_Date) AS Join_Month, SUM(Monthly_Revenue) AS Total_Monthly_Revenue FROM Netflix_tbl
GROUP BY Country,Gender, MONTH(Join_Date) 
ORDER BY Join_Month, Total_Monthly_Revenue DESC

---- Task 9  Sum of Monthly Revenue by Country, Age, and Gender (SMRCAG)
SELECT Country, Age, Gender, MONTH(Join_Date) AS Join_Month, SUM(Monthly_Revenue) AS Total_Monthly_Revenue FROM Netflix_tbl
GROUP BY Country,Age, Gender, MONTH(Join_Date) 
ORDER BY Join_Month, Total_Monthly_Revenue DESC

----- Task 10  Sum of Monthly Revenue by Subscription Type (SMRST)
SELECT Subscription_Type, MONTH(Join_Date) AS Join_Month, SUM(Monthly_Revenue) AS Total_Monthly_Revenue FROM Netflix_tbl
GROUP BY Subscription_Type,MONTH(Join_Date) 
ORDER BY Join_Month, Total_Monthly_Revenue DESC
