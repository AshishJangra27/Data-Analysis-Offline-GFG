use myntra;

-- Showing the Data
select * from products;
select brand_name from products;


-- showing specific columns
select brand_name from products;
select brand_name, rating, rating_count from products;

-- showing specific column in specific order
select rating, brand_name, rating_count from products;

-- create new column with mathemtical functions | Making Discounted Amount
select product_name, brand_name,marked_price, discounted_price, 
	marked_price - discounted_price as 'discount_amount' from products;

select product_name, brand_name,marked_price, discounted_price, 
		marked_price - discounted_price as 'discount_amount',
		ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc'
from products;

-- create new column with mathemtical functions | Making Rating Count * Rating
select product_name, brand_name, rating_count, rating, rating_count * rating as 'rating_filter' from products; 

-- create new column with mathemtical functions | Making Discount Percentage
select product_name, brand_name,marked_price, discounted_price, ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc' from products;

-- Finding UNIQUE values
select count(brand_name) from products;

select count(distinct(brand_name)) from products;

select count(distinct(brand_name)) from products  where product_tag = 'tshirts';
select count(distinct(brand_name)) from products  where product_tag = 'shirts';
    

-- Adding Where Clause
select * from products where True;

-- Adding Distinct with Where | Unique Products served by Adidas
select * from products  where brand_tag = 'adidas';

-- Adding Distinct with Where | Unique Products served by Adidas
select distinct * from products  where brand_tag = 'adidas';




-- Products with Multiple Where Clause with AND
select count(distinct(brand_tag)) from products  
	where product_tag = 'tshirts' and discounted_price < 1000;


--  name of the brands selling shirts with price more than 5000
select distinct(brand_name) from products  
	where product_tag = 'shirts' and discounted_price > 5000;


--  different categories "Blackberrys" serves in under 5000rs

select distinct(product_tag) from products  
	where brand_name = 'nike' and discounted_price < 5000;

--  nike tshirts between 2000-3000

Select * from products where brand_name='NIKE' AND product_tag='tshirts' AND 
discounted_price BETWEEN 2000 AND 3000;

--  tshirts between 2000-3000 from either nike or adidas
Select * from products where brand_name='NIKE' or brand_name='ADIDAS' AND product_tag='tshirts' AND 
discounted_price BETWEEN 2000 AND 3000;


select distinct * from products  
where brand_tag = 'adidas' and discounted_price > 3000 and discounted_price < 5000;

-- Products with BETWEEN
select distinct * from products  where brand_tag = 'adidas' and discounted_price between 3000 and  5000;

-- Adding more filters
select distinct * from products  
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) and rating > 4;

-- Lets go one steps ahead
select distinct * from products 
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) 
				and rating > 4 and rating_count > 10;

-- One More

-- Using OR
select distinct * from products  
where (brand_tag = 'adidas' or brand_tag = 'puma') and 
			(discounted_price between 5000 and  8000) ;

-- Using NOT
select distinct * from products  
where not (brand_tag = 'adidas') and (discounted_price between 5000 and  8000) ;

-- Using IN
select distinct * from products  
where brand_name in ('adidas','puma') and (discounted_price between 5000 and  8000) ;

-- Using NOT IN
select distinct * from products  
where brand_tag not in ('adidas','puma') and (discounted_price between 5000 and  8000) ;