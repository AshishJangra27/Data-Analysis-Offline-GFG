# Showing the Dataset
select * from gfg.products;

# Finding the max value
select max(discounted_price) from gfg.products;
select * from gfg.products where discounted_price = 45900;

select max(marked_price) from gfg.products;
select * from gfg.products where marked_price = 113999;

select max(marked_price), max(discounted_price) from gfg.products;


# Finding the min value
select product_name, min(discounted_price) from gfg.products;

select min(discounted_price), max(discounted_price), avg(discount_percent) from gfg.products;

# Finding the average value
select avg(discounted_price) from gfg.products;

# Finding the average value of brand puma
select avg(discounted_price) from gfg.products where brand_tag = 'puma';
select min(discounted_price) from gfg.products where brand_tag = 'puma';
select max(discounted_price) from gfg.products where brand_tag = 'puma';

# Same command in one line
select avg(discounted_price),min(discounted_price),max(discounted_price) from gfg.products where brand_tag = 'puma';

# Same command with alliace
select avg(discounted_price) as 'avg',min(discounted_price) as 'min',max(discounted_price) as 'max' from gfg.products where brand_tag = 'puma';

# Creating new columns of total revenue genereated by each product
select discounted_price, rating_count,  discounted_price * rating_count as 'Revenue' from gfg.products;

# Finding total revenue genereated by all product
select discounted_price,rating_count, (discounted_price * rating_count) as 'Revenue' from gfg.products;
select sum(discounted_price * rating_count) as 'Revenue' from gfg.products;

# Finding total products
select count(brand_tag) as 'Total Products' from gfg.products;
select count(*) as 'Total Products' from gfg.products;

# Finding number of products in Nike
select count(*) as 'Total Products' from gfg.products where brand_tag = 'nike';
select count(distinct product_link ) as 'Total Products' from gfg.products where brand_tag = 'nike';

# Finding the name of categories nike serves
select distinct(product_tag) as 'Total Products' from gfg.products where brand_tag = 'nike';

# Finding the number of categories nike serves
select count(distinct(product_tag)) as 'Total Products' from gfg.products where brand_tag = 'nike';

# Finding the number of brands serves on myntra
select count(distinct(brand_tag)) as 'Total Products' from gfg.products;

# round | Product with best rating | rating * rating count | ceil & floor
select product_name, round(rating * rating_count,3) from gfg.products;