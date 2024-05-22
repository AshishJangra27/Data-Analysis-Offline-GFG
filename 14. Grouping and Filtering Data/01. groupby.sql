use gfg;
select * from products;

-- 1. Finding the names of unique brands
select distinct brand_name from products;

-- 2. Finding the number of unique brands
select count(distinct brand_name) from products;

-- 3. Finding the number of products in each brands
select brand_tag, count(product_tag) from products group by brand_tag;

-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag, count(product_tag)  as 'products' 
from products 
group by brand_tag
order by products desc limit 5;

-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count)  as 'products_sold' from products 
group by brand_tag
order by products_sold desc limit 5;

-- 6. Finding the top 5 most expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price desc limit 5;

-- 7. Finding the top 5 least expensive brands based on their discounted price
select brand_tag, round(avg(discounted_price))  as 'average_price' from products 
group by brand_tag
order by average_price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 
select product_tag, sum(rating_count)  as 'product_sold' from products 
group by product_tag
order by product_sold desc limit 5;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag, avg(discount_percent)  as 'avg_discount' from products 
group by brand_tag
order by avg_discount desc limit 5;

-- 10. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price)  as 'avg_price' from products 
group by product_tag
order by avg_price desc limit 5;

-- 11. Brand Report Card
select brand_tag, 
	sum(rating_count) as 'people_rated',
    min(marked_price) as 'min_mar_price',
    avg(marked_price) as 'avg_mar_price',
    max(marked_price) as 'max_mar_price' 
from products group by brand_tag;

-- 12. Which product_category of any brand is sold the most?
select brand_tag, product_tag, sum(rating_count) as 'people_rated' from products 
group by brand_tag, product_tag
order by people_rated desc limit 10;

-- 13. List top 5 brands which has sold most number of tshirts
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'tshirts'
group by brand_tag
order by orders desc limit 5;

-- 14. List top 5 brands which has sold most number of shirts
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'shirts'
group by brand_tag
order by orders desc limit 5;

-- 15. List top 5 brands which has sold most number of jeans
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'jeans'
group by brand_tag
order by orders desc limit 5;

-- 16. List top 5 brands which has sold most number of dresses
select brand_tag, product_tag, sum(rating_count) as 'orders', avg(discounted_price) as 'avg_price'
from products 
where product_tag = 'dresses'
group by brand_tag
order by orders desc limit 5;

-- 17. Most popular product name listed in Myntra
select product_name ,count(product_name) as 'name_count' from products 
group by product_name 
order by name_count desc limit 10;

-- 18. Number of products sold for every rating (0 - 5)
select rating ,count(rating) as 'freq' from products 
group by rating 
order by rating asc;

-- 19. Number of products sold for every rating by nike
select rating ,count(rating) as 'freq' from products 
where brand_tag = 'nike'
group by rating 
order by rating asc;

-- 20. Number of products sold for every rating in tshirt category
select rating ,count(rating_count) as 'freq' from products 
where  product_tag = 'tshirts'
group by rating 
order by rating asc;

-- 21. Relation between price of the thisrt and its rating wrt to people rated
select product_tag, rating, round(avg(rating_count)) as 'product_count', round(avg(discounted_price))
from products
where product_tag = 'tshirts'
group by rating
order by rating asc;

-- 22. Find the average rating for each product category (product tag) along with the number of products and total rating count
select product_tag, avg(rating) as 'avg_rating', count(*) as 'total_products', sum(rating_count) as 'total_rating_count'
from products
group by product_tag
order by avg_rating asc;

-- 23. Find the brand with the highest average rating among products with a discounted price greater than 5000
select brand_tag, avg(rating) as 'avg_rating', sum(rating_count)
from products
where discounted_price > 5000
group by brand_tag
order by avg_rating desc;