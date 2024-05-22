
-- Basic Query: Find the average rating of products
select avg(rating) as 'avg_rating' from gfg.products;

-- Subquery in WHERE Clause: Find the brand names with a rating higher than the average rating
select brand_name from gfg.products where rating > (select avg(rating) as 'avg_rating' from gfg.products);

-- Subquery in SELECT Clause: Retrieve the product name along with the average rating of products
select product_name , rating,
	(select avg(rating) from gfg.products) as 'avg_rating' 
from gfg.products;

-- Subquery with Multiple Results: Find the total rating count of products for each brand compared to the overall average rating count
select brand_name,
	(select sum(rating_count) from gfg.products where brand_name = p.brand_name) as total_rating_count
from (select distinct brand_name from gfg.products) as p;
