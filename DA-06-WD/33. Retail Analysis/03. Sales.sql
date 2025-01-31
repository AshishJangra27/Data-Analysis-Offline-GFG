-- Sales-Focused KPIs

select * from data;

-- 1. Total Order Frequency
SELECT SUM(Quantity) AS "Total Products Sold" FROM  data;


-- 2. Total Revenue Generated
SELECT  SUM(Quantity * UnitPrice) AS "Total Revenue" FROM data;


-- 3. Average Order Value (AOV)
select round(avg(Revenue),2) as "AOV" from 
	(select InvoiceNo, sum(UnitPrice*Quantity) as 'Revenue' 
		from data  group by InvoiceNo
	) as t;


-- 4. Average Bucket Size | as per Quantities
select round(avg(Quantities),0) as "Average Bucket Size" from 
	(select InvoiceNo, sum(Quantity) as 'Quantities' 
		from data  group by InvoiceNo
	) as t;


-- 5. Average Bucket Size | as per Items
select round(avg(Quantities),0) as "Average Bucket Size" from 
	(select InvoiceNo, count(Quantity) as 'Quantities' 
		from data  group by InvoiceNo
	) as t;


-- 6. Revenue per Country
SELECT  country,  ROUND(SUM(Quantity * UnitPrice),0)  AS "TotalRevenue" FROM data
	group by country
		order by TotalRevenue DESC;


-- 7. Quantities Sold per Country
SELECT  Country, SUM(Quantity) AS Total_Products_Sold
	FROM  data
		GROUP BY Country 
			ORDER BY Total_Products_Sold DESC;

	
-- 8. Order Analysis per Country
SELECT  Country, 	SUM(Quantity) AS Total_Quantities_Sold, 
			    	ROUND(SUM(Quantity * UnitPrice),0)  AS "TotalRevenue",
                    COUNT(DISTINCT InvoiceNo) AS Total_Orders
	FROM  data
		GROUP BY Country 
			ORDER BY Total_Products_Sold DESC;