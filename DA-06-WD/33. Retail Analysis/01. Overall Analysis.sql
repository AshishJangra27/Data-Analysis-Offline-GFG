-- create database retail;

use retail;
select * from data;


-- 1. Total Products Sold
SELECT SUM(Quantity) AS "Total Products Sold" FROM  data;


-- 2. Total Revenue Generated
SELECT  SUM(Quantity * UnitPrice) AS "Total Revenue" FROM data;


-- 3. Total Customers
SELECT  COUNT(DISTINCT CustomerID) AS "Customers" FROM  data;


-- 4. Stock Keeping Units
SELECT  COUNT(DISTINCT StockCode) AS "SKUs" FROM  data;


-- 5. Total Orders
SELECT  COUNT(DISTINCT InvoiceNo) AS "Total Orders" FROM  data;


-- 6. Total Countries
SELECT  COUNT(DISTINCT Country) AS "Countries" FROM  data;


-- 7. How many Years, Months and Days of data do we have?
SELECT
    (MAX(YEAR(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i'))) -  MIN(YEAR(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i'))) + 1) AS Total_Years,
    COUNT(DISTINCT DATE_FORMAT(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i'), '%Y-%m')) AS Total_Months,
    COUNT(DISTINCT DATE(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i'))) AS Total_Days
FROM 
    data;


-- 8. Dates for which we have data?
SELECT  
	DISTINCT DATE(STR_TO_DATE(InvoiceDate, '%d/%m/%y')) AS Unique_Date
FROM data 
	ORDER BY Unique_Date;


-- 9. Time for which we have data?
SELECT DISTINCT 
    HOUR(STR_TO_DATE(InvoiceDate, '%d/%m/%y %H:%i')) AS Unique_Hour
FROM data 
	ORDER BY Unique_Hour;