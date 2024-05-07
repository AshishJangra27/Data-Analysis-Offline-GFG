# 1. Brand Report Card
select * from gfg.products;

select brand_tag , 
sum(rating_count) as 'people_rated', 

min(marked_price) as 'min_mar_price',
round(avg(marked_price)) as 'avg_mar_price',
max(marked_price) as 'max_mar_price',

min(discounted_price) as 'min_dis_price',
round(avg(discounted_price)) as 'avg_dis_price',
max(discounted_price) as 'max_dis_price',

round(avg(discounted_price)) as 'avg_dis_price',
round(avg(discount_percent)) as 'avg_dis_percent',
round(avg(rating),2) as 'avg_rating',
count(distinct(product_tag)) as 'product_categories',
count(*) as 'total_products'

from gfg.products 
group by brand_tag 
order by people_rated desc limit 10;
-- order by avg_dis_percent asc, people_rated desc limit 10;


# 2. Which product_category of any brand is sold the most?
select brand_tag , product_tag ,
sum(rating_count) as 'people_rated',  
round(avg(discounted_price)) as 'avg_price',
round(avg(rating),2) as 'avg_rating'

from gfg.products 
group by brand_tag, product_tag
order by people_rated desc limit 30;


# 3. List top 5 brands which has sold most number of tshirts
select brand_tag , product_tag ,
sum(rating_count) as 'people_rated',  
round(avg(discounted_price)) as 'avg_price',
round(avg(rating),2) as 'avg_rating'
from gfg.products 
where product_tag = 'tshirts'
group by brand_tag
order by people_rated desc limit 30;

# 4. List top 5 brands which has sold most number of shirts
select brand_tag , product_tag ,
sum(rating_count) as 'people_rated',  
round(avg(discounted_price)) as 'avg_price',
round(avg(rating),2) as 'avg_rating'
from gfg.products 
where product_tag = 'shirts'
group by brand_tag
order by people_rated desc limit 30;

# 5. List top 5 brands which has sold most number of jeans
select brand_tag , product_tag ,
sum(rating_count) as 'people_rated',  
round(avg(discounted_price)) as 'avg_price',
round(avg(rating),2) as 'avg_rating'
from gfg.products 
where product_tag = 'jeans'
group by brand_tag
order by people_rated desc limit 30;

# 6. List top 5 brands which has sold most number of dresses
select brand_tag , product_tag ,
sum(rating_count) as 'people_rated',  
round(avg(discounted_price)) as 'avg_price',
round(avg(rating),2) as 'avg_rating'
from gfg.products 
where product_tag = 'dresses'
group by brand_tag
order by people_rated desc limit 30;

# 7. Most popular product name listed in Myntra
select product_name ,count(product_name) as 'product_count'
from gfg.products 
group by product_name
order by product_count desc limit 30;

# 8. Number of products sold for every rating (0 - 5)
select rating , sum(rating_count) as 'product_count'
from gfg.products 
group by rating
order by rating asc;

# 9. Number of products sold for every rating by bike
select brand_tag ,rating , sum(rating_count) as 'product_count'
from gfg.products 
where brand_tag = 'nike'
group by rating
order by rating asc;

# 10. Number of products sold for every rating in tshirt category
select product_tag ,rating , sum(rating_count) as 'product_count'
from gfg.products 
where product_tag = 'tshirts'
group by rating
order by rating asc;

# 11. Relation between price of the thisrt and its rating wrt to people rated
select product_tag ,rating , round(avg(rating_count)) as 'product_count', round(avg(discounted_price))
from gfg.products 
where product_tag = 'tshirts'
group by rating
order by rating asc;