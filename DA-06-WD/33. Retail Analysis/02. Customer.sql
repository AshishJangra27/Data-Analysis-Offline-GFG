-- Customer-Focused KPIs

select * from data;


-- 1. Customer Lifetime Value | CLV
select round(avg(CLV),0) as "CLV" from 
	(select CustomerID, sum(Quantity * UnitPrice) as 'CLV' 
		from data  group by CustomerID
	) as t;
    
    
-- 2. Customer Lifetime Orders
select round(avg(Lifetime_Ordeuu7rs),0) as "Lifetime_Orders" from 
	(select CustomerID, count(distinct(InvoiceNo)) as 'Lifetime_Orders' 
		from data  
			group by CustomerID
	) as t;


-- 3. Top 10 Customers by Revenue
select CustomerID, round(sum(Quantity * UnitPrice),0) as 'Revenue' 
		from data  
			group by CustomerID
				order by Revenue desc limit 10;
                

-- 4. Top 10 Customers by Most Orders
SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS Total_Orders
	FROM data
		GROUP BY CustomerID
			ORDER BY Total_Orders DESC LIMIT 10;

            
-- 5. Top 10 Customers by Most Number of Quantities Ordered
SELECT CustomerID, SUM(Quantity) AS Total_Quantities_Ordered
	FROM data
		GROUP BY CustomerID
			ORDER BY Total_Quantities_Ordered DESC LIMIT 10;
            