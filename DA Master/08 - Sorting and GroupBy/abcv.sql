use myntra;

select * from product where brand_name = 'puma' and 
	marked_price >= 2000 and  marked_price <= 5000;
    
    
select * from products
	order by discounted_price desc
		limit 5;
        
# top 10 most baught products from puma
select * from products where brand_name = 'puma' order by rating_count desc limit 10;

# top 10 best-selling tshirts from nike with rating more than 4
select * from products 
	where product_tag='tshirts' 
		and brand_name = 'nike' 
			and rating >= 4
				order by rating_count
					limit 10;

# top 10 best-selling shoes from nike with rating more than 4 and price between 2-5k
select * from products 
	where product_tag='tshirts' 
		and brand_name = 'nike' 
			and rating >= 4
				and discounted_price between 2000 and 10000
					order by rating_count
						limit 10;
						
--  top next 10 after top 10 best-selling shoes from nike or adidas 
-- 					with rating more than 4 and price between 2-5k
select * from products 
	where product_tag in('casual-shoes' ,'sports-shoes')
		and brand_name in('nike','adidas')
			and rating > 4
				and discounted_price between 2000 and 10000
					order by rating_count
						limit 10,5;
                        
                        

-- top 10 brands with maximum number of product slisted
select brand_name, count(*) as 'frequency'
	from products 
		group by brand_name
			order by frequency desc
				limit 10;
                
-- top 10 product_categories with maximum number of products listed






-- top 10 bestselling brands;
select brand_name, sum(rating_count), count(*), sum(rating_count * discounted_price)
	from products 
		group by brand_name
			order by sum(rating_count) desc
					limit 10;
    
    
-- top 10 brands as per no of products listed;
select brand_name, count(*) from products 
	group by brand_name
		order by count(*) desc
			limit 10;
            
select brand_name, sum(rating_count) from products 
	group by brand_name
		order by sum(rating_count) desc
			limit 10;
            
select brand_name, sum(rating_count * discounted_price) from products 
	group by brand_name
		order by sum(rating_count * discounted_price) desc
			limit 10;
    
select brand_name, count(*) as 'total_products', sum(rating_count) as 'sales' , sum(rating_count * discounted_price) as 'revenue'
	from products 
		group by brand_name
			order by count(*) desc
				limit 10;
    
    
    
