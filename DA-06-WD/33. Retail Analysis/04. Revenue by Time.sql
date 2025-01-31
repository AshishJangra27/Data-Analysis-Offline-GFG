-- 1. Revenue per Time Period

SELECT DATE(STR_TO_DATE(InvoiceDate, '%d/%m/%y')) AS Order_Date,  ROUND(SUM(Quantity * UnitPrice),0) AS Total_Revenue
	FROM data
		GROUP BY Order_Date
			ORDER BY Order_Date;
            


-- 2. Revenue Per Day
SELECT 
    DAYNAME(STR_TO_DATE(InvoiceDate, '%d/%m/%y')) AS Day_of_Week, 
		ROUND(SUM(Quantity * UnitPrice), 0) AS Total_Revenue
FROM data
	GROUP BY Day_of_Week
		ORDER BY FIELD(Day_of_Week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
        

-- 3. Revenue Per Time
SELECT 
    HOUR(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i')) AS Hour_of_Day, 
		ROUND(SUM(Quantity * UnitPrice), 0) AS Total_Revenue
FROM data
	GROUP BY Hour_of_Day 
		ORDER BY Hour_of_Day;
