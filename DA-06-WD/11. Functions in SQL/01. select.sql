use myntra;

-- Showing the Data
select * from products;

-- showing specific columns
select brand_name from products;
select brand_name, rating, rating_count from products;


-- showing specific column in specific order
select rating, brand_name, rating_count from products;

-- create new column with mathemtical functions | Making Discounted Amount
select product_name, brand_name,marked_price, discounted_price, marked_price - discounted_price as 'discount_amount' from products;

select product_name, brand_name,marked_price, discounted_price, 
		marked_price - discounted_price as 'discount_amount',
		ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc'
from products;

-- create new column with mathemtical functions | Making Rating Count * Rating
select product_name, brand_name, rating_count, rating, rating_count * rating as 'rating_filter' from products; 

-- create new column with mathemtical functions | Making Discount Percentage
select product_name, brand_name,marked_price, discounted_price, ROUND(((marked_price - discounted_price)/marked_price)*100) as 'discount_perc' from products;


-- Finding UNIQUE values
select distinct(brand_name) from products;

-- Adding Where Clause
select * from products where True;

-- Adding Distinct with Where | Unique Products served by Adidas
select * from products  where brand_tag = 'adidas';


-- Adding Distinct with Where | Unique Products served by Adidas
select distinct(product_tag) from products  where brand_tag = 'adidas';

-- Products with Multiple Where Clause with AND
select distinct * from products  
where  brand_tag = 'adidas' and discounted_price > 5000;

-- Adidas Products with Price betwen 3000 to 5000
select distinct * from products  
where brand_tag = 'adidas' and discounted_price > 3000 and discounted_price < 5000;

-- Products with BETWEEN
select distinct * from products  where brand_tag = 'adidas'
	and discounted_price between 3000 and  5000;

-- Adding more filters
select distinct * from products  
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) and rating > 4;

-- Lets go one steps ahead
select distinct * from products 
where brand_tag = 'adidas' and (discounted_price between 3000 and  8000) and rating > 4 and rating_count > 10;

-- One More

-- Using OR
select distinct * from products  
where (brand_tag = 'adidas' or brand_tag = 'puma') and (discounted_price between 5000 and  8000) ;

-- Using NOT
select distinct * from products  
where not (brand_tag = 'adidas') and (discounted_price between 5000 and  8000) ;

-- Using IN
select distinct * from products  
where brand_name in ('adidas','puma') and (discounted_price between 5000 and  8000) ;

-- Using NOT IN
select distinct * from products 
where brand_name not in ('adidas','puma') and (discounted_price between 5000 and  8000) ;