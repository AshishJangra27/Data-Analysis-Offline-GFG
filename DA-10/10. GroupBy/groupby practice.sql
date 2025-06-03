use myntra;

# 1. how many brands are associated with us? (3194)
select count(distinct brand_tag) from products;

# 2. how many tshirts do we have in the database? (16978)
select count(*) from products where product_tag = 'tshirts';

# 3. how many tshirts do we have in the database under 2000? (16204)
select count(*) from products 
	where product_tag = 'tshirts' and discounted_price < 2000;

# 4. how many brands are selling tshirts? (475)
select count(distinct brand_name) from products 
	where product_tag = 'tshirts';

# 5. How many different product categories H&M selling? (74)
select count(distinct product_tag) from products 
	where brand_name = 'H&M';

# 6. list top 5 tshirts of nike | (575,575,462,432,110)
select * from products 
	where product_tag = 'tshirts' and brand_name = 'nike'
		order by rating_count desc
			limit 5;

# 7. list top 5 worse rated products from GUESS
select * from products 
	where brand_name = 'guess' and rating_count > 0
		order by rating asc
			limit 5;

# 8. find total products sold by Levis (56117)
select sum(rating_count) from products where brand_name = 'levis';

# 9. how many tshirts are sold in total? (2063921)
select sum(rating_count) from products where product_tag = 'tshirts';

# 10. which category among tshirts & shirt has generated more revenue?
select sum(rating_count*discounted_price) from products where product_tag = 'tshirts';
select sum(rating_count*discounted_price) from products where product_tag = 'shirts';


# 11. List top 5 best-selling brands
select brand_name, sum(rating_count) as 'product_sold' from products 
	group by brand_name
		order by product_sold desc
			limit 5;

# 12. List top 5 best-selling product_tag
select product_tag, sum(rating_count) as 'product_sold' from products 
	group by product_tag
		order by product_sold desc
			limit 5;


# 13. Which brand has generated maximum revenue?
select brand_name, sum(rating_count*discounted_price) as 'revenue' from products 
	group by brand_name
		order by revenue desc
			limit 5;

# 14. Which product_category has generated maximum revenue?
select product_tag, sum(rating_count*discounted_price) as 'revenue' from products 
	group by product_tag
		order by revenue desc
			limit 5;


# 15. which category among tshirts & shirt has generated more revenue?
select product_tag, sum(rating_count*discounted_price) as 'revenue'
	from products where product_tag in ('tshirts','shirts')
		group by product_tag
			order by revenue desc;