# Showing the Dataset
select * from gfg.products;

-- 1. Finding the names of unique brands
select distinct brand_name from gfg.products;

-- 2. Finding the number of unique brands
select count(distinct brand_name)  from gfg.products;

-- 3. Finding the number of products in each brands
select brand_tag , count(product_tag) from gfg.products group by brand_tag;

-- 4. Finding the top 5 brand who has the most number of products | different product in their inventory
-- 5. Finding the top 5 brand who sold the most number of products
-- 6. Finding the top 5 most expensive brands based on their discounted price
-- 7. Finding the top 5 least expensive brands based on their discounted price
-- 8. Finding the top 10 best-selling product categories 
-- 9. Finding the top 10 brands who gives maximum discount
-- 10. Finding the top 5 most expensive product categories