select * from gfg.products;

-- # 1. Finding the top 5 most expensive brands
-- select brand_tag, avg(discounted_price) as 'avg_price' from gfg.products 
-- group by brand_tag
-- order by avg_price desc limit 5;

-- # 2. Finding the top 5 most expensive brands with average rating more than 4.5
-- select brand_tag, avg(discounted_price) as 'avg_price', avg(rating) from gfg.products 
-- group by brand_tag
-- having avg(rating) > 4.5
-- order by avg_price desc limit 5;

-- # 3. Finding the top 5 most expensive brands with average rating more than 4.5 and price less than 5000
-- select brand_tag, avg(discounted_price) as 'avg_price', avg(rating) from gfg.products 
-- group by brand_tag
-- having avg(rating) > 4.5 and avg_price < 5000
-- order by avg_price desc limit 5;


-- # 4. Finding the top 5 most sold brands with average rating more than 4.5 and price less than 5000
-- select brand_tag, avg(discounted_price) as 'avg_price', avg(rating), sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg(rating) > 4.5 and avg_price < 5000 
-- order by products_sold desc limit 5;

-- # 5. Finding the top 5 most sold brands with average rating more than 4.5 and price between 2000 and 5000
-- select brand_tag, avg(discounted_price) as 'avg_price', avg(rating), sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg(rating) > 4.5 and avg_price between 2000 and 5000 
-- order by products_sold desc limit 5;

-- # 6. Finding the top 5 most sold brands in price range 0 - 1000
-- select brand_tag, round(avg(discounted_price)) as 'avg_price', sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg_price between 0 and 1000 
-- order by products_sold desc limit 5;

-- # 7. Finding the top 5 most sold brands in price range 1000 - 2500
-- select brand_tag, round(avg(discounted_price)) as 'avg_price', sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg_price between 1000 and 2500 
-- order by products_sold desc limit 5;

-- # 8. Finding the top 5 most sold brands in price range 2500 - 5000
-- select brand_tag, round(avg(discounted_price)) as 'avg_price', sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg_price between 2500 and 5000 
-- order by products_sold desc limit 5;

-- # 9. Finding the top 5 most sold brands in price range 5000 - 10000
-- select brand_tag, round(avg(discounted_price)) as 'avg_price', sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg_price between 5000 and 10000 
-- order by products_sold desc limit 5;

-- # 10. Finding the top 5 most sold brands in price more than 10000
-- select brand_tag, round(avg(discounted_price)) as 'avg_price', sum(rating_count) as 'products_sold'
-- from gfg.products 
-- group by brand_tag
-- having avg_price > 10000
-- order by products_sold desc limit 5;


-- # 11. Top 5 brands with maximum products sold
-- select brand_tag, sum(rating_count) as 'products_sold' from gfg.products 
-- group by brand_tag
-- order by products_sold desc limit 5;

-- # 12. Top 5 brands with maximum revenue generated
-- select brand_tag, sum(rating_count* discounted_price) as 'revenue' from gfg.products 
-- group by brand_tag
-- order by revenue desc limit 5;

-- # 13. List the name of brands which has generated more than 100 million in revenue
-- select brand_tag, sum(rating_count* discounted_price) as 'revenue' from gfg.products 
-- group by brand_tag
-- having revenue > 100000000
-- order by revenue desc;


-- # 14. Top 10 product categories with most number of products sold
-- select product_tag, sum(rating_count) as 'total_sold' from gfg.products 
-- group by product_tag
-- order by total_sold desc limit 10;

-- # 15. List the name of product categories which has generated more than 100 million in revenue
-- select product_tag, sum(rating_count*discounted_price) as 'revenue' from gfg.products 
-- group by product_tag
-- having revenue > 100000000
-- order by revenue desc limit 10;

# 16. Top 5 best-selling prodcut categories under Rs 1000
select product_tag, sum(rating_count) as 'products_sold' ,
avg(rating) as 'avg_rating', 
round(avg(discounted_price)) as 'avg_price',
sum(discounted_price * rating_count)  as 'revenue'
from gfg.products 
group by product_tag
having avg_price between 0 and 1000
order by products_sold desc limit 5;

# 17. Top 5 best-selling prodcut categories with price between 1000 - 2500
select product_tag, sum(rating_count) as 'products_sold' ,
avg(rating) as 'avg_rating', 
round(avg(discounted_price)) as 'avg_price',
sum(discounted_price * rating_count)  as 'revenue'
from gfg.products 
group by product_tag
having avg_price between 1000 and 2500
order by products_sold desc limit 5;

# 18. Top 5 best-selling prodcut categories with price between 2500 - 5000
select product_tag, sum(rating_count) as 'products_sold' ,
avg(rating) as 'avg_rating', 
round(avg(discounted_price)) as 'avg_price',
sum(discounted_price * rating_count)  as 'revenue'
from gfg.products 
group by product_tag
having avg_price between 2500 and 5000
order by products_sold desc limit 5;

# 19. Top 5 best-selling prodcut categories with price between 5000 - 10000
select product_tag, sum(rating_count) as 'products_sold' ,
avg(rating) as 'avg_rating', 
round(avg(discounted_price)) as 'avg_price',
sum(discounted_price * rating_count)  as 'revenue'
from gfg.products 
group by product_tag
having avg_price between 5000 and 10000
order by products_sold desc limit 5;

# 20. Top 5 best-selling prodcut categories with price more than 10000
select product_tag, sum(rating_count) as 'products_sold' ,
avg(rating) as 'avg_rating', 
round(avg(discounted_price)) as 'avg_price',
sum(discounted_price * rating_count)  as 'revenue'
from gfg.products 
group by product_tag
having avg_price > 10000
order by products_sold desc limit 5;

# 22. Best-selling product of the year
select * from gfg.products order by rating_count desc limit 1;

# 22. Most revenue generated by any product
select product_name, rating_count*discounted_price as 'revenue' , product_link from gfg.products 
order by revenue desc limit 1;

# 23. Best-selling watch of the year
select * from gfg.products where product_tag = 'watches' order by rating_count desc limit 1;

# 24. Best-selling watch of the year between price 2500 and 5000
select * from gfg.products where product_tag = 'watches' and discounted_price between 2500 and 5000 order by rating_count desc limit 1;


# 25. Best-selling tshirt of the year
select * from gfg.products where product_tag = 'tshirts' order by rating_count desc limit 1;