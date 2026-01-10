#Check total records

  SELECT COUNT(*) AS total_rows
FROM superstore;

#Remove rows with null sales or profit 
SELECT *
FROM superstore
WHERE Sales IS NOT NULL
  AND Profit IS NOT NULL;

#️PROFITABILITY ANALYSIS 
  #Profit & Margin by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales), 2) AS Profit_Margin
FROM superstore
GROUP BY Category
ORDER BY Profit_Margin ASC;
 
#Profit by Sub-Category 
SELECT
    Sub_Category,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;

️ #HIGH SALES BUT LOW PROFIT 
SELECT
    SELECT
    `Sub-Category`,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC
LIMIT 1000;

️#REGIONAL PERFORMANCE ANALYSIS
SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;

#DISCOUNT IMPACT ANALYSIS
SELECT
    Discount,
    ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

#CATEGORY & REGION COMBINATION ANALYSIS
SELECT
    Region,
    Category,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region, Category
ORDER BY Region, Total_Profit DESC;






