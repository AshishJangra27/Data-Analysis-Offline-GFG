-- Product-Focused KPIs

select * from data;

-- Top-Selling Products
SELECT 
    StockCode, 
    Description, 
    SUM(Quantity) AS Total_Quantity_Sold,
    ROUND(SUM(Quantity*UnitPrice),0) AS Revenue,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders
FROM  data
	GROUP BY  StockCode, Description
		ORDER BY  Total_Quantity_Sold DESC LIMIT 10;

-- Top 5 Products of Every Country as per Revenue

WITH RankedProducts AS (
    SELECT 
        Country,
        StockCode, 
        Description, 
        SUM(Quantity) AS Total_Quantity_Sold,
        ROUND(SUM(Quantity * UnitPrice), 0) AS Revenue,
        COUNT(DISTINCT InvoiceNo) AS Total_Orders,
        ROW_NUMBER() OVER (PARTITION BY Country ORDER BY SUM(Quantity) DESC) AS Ranking
    FROM 
        data
    GROUP BY 
        Country, StockCode, Description
)
SELECT 
    Country,
    StockCode, 
    Description, 
    Total_Quantity_Sold,
    Revenue,
    Total_Orders
FROM 
    RankedProducts
WHERE Ranking <= 5
ORDER BY Country, Ranking;
