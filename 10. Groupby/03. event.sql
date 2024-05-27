-- User Specific
# 1. Which product categories witness the highest sales during the year?
select product_tag, sum(rating_count) as 'products_sold' from gfg.products
group by product_tag 
order by products_sold desc;

# 2. Which brand witness the highest sales during year?
select brand_tag, sum(rating_count) as 'products_sold' from gfg.products
group by brand_tag 
order by products_sold desc;

# 3. Which product categories of a specific brand witnessed maximum sales?
select brand_tag, product_tag, 
		sum(rating_count) as 'products_sold', 
        count(*) as 'no_of_products', 
        avg(discounted_price) as 'avg_dis_price',
        avg(marked_price) as 'avg_mar_price',
        avg(rating) from gfg.products
group by brand_tag, product_tag 
order by products_sold desc;

# 4. Which product is witnessed the maximum sales?
select product_name, brand_name, discounted_price, rating_count , product_link  from gfg.products
order by rating_count desc ;

-- Merchant Specific
# 1. What is the average price point of products across different categories and brands?
# 2. How much discount should be offered on each product to maximize revenue and profit?
# 3. What is the average discount on tshirt we need to give?
# 4. What are the biggest brands in tshirt market?
# 5. How much market of tshirt is captured by roadster?
# 6. How much market of tshirt is captured by top 5 tshirt brands?

-- Company Specific | Event
# 1. What kind of content (videos, blogs, influencer engagement) will best resonate with the target audience?
# 2. Which products should be promoted on the homepage or through personalized recommendations?

-- Company Specific | Improvements
# 1.  Which products have the highest and lowest ratings and what insights can we glean from them?