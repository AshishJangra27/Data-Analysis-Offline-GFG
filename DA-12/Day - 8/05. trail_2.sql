# Showing the Dataset
select * from gfg.products;

-- 1. Finding the names of unique brands
select distinct brand_name from gfg.products;

-- 2. Finding the number of unique brands
select count(distinct brand_name)  from gfg.products;

-- 3. Finding the number of products in each brands
select brand_tag , count(product_tag) from gfg.products group by brand_tag;

-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
select brand_tag, count(product_name) from gfg.products
group by brand_tag
order by count(product_name) desc limit 5;

-- 5. Finding the top 5 brand who sold the most number of products
select brand_tag, sum(rating_count) as 'products_sold' from gfg.products
group by brand_tag
order by products_sold desc limit 5;

-- 6. Finding the top 5 most expensive brands
select brand_tag, round(avg(discounted_price)) as 'avg_price' from gfg.products
group by brand_tag
order by avg_price desc limit 5;

-- 7. Finding the top 5 least expensive brands
select brand_tag, round(avg(discounted_price)) as 'avg_price' from gfg.products
group by brand_tag
order by avg_price asc limit 5;

-- 8. Finding the top 10 best-selling product categories 
select product_tag, sum(rating_count) as 'avg_price' from gfg.products
group by product_tag
order by avg_price desc limit 10;

-- 9. Finding the top 10 brands who gives maximum discount
select brand_tag, round(avg(discount_percent)) as 'avg_discount' from gfg.products
group by brand_tag
order by avg_discount desc limit 10;

-- 10. Finding the top 5 most expensive product categories
select product_tag, avg(discounted_price) as 'avg_price' from gfg.products
group by product_tag
order by avg_price desc limit 10;