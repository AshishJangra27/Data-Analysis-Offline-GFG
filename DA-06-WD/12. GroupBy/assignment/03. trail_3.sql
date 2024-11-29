# Showing the Dataset
use myntra;
select * from products;

# 1. Brand Report Card
# 2. Which product_category of any brand is sold the most?

# 3. List top 5 brands which has sold most number of tshirts
# 4. List top 5 brands which has sold most number of shirts
# 5. List top 5 brands which has sold most number of jeans
# 6. List top 5 brands which has sold most number of dresses
# 7. Most popular product name listed in Myntra
# 8. Number of products sold for every rating (0 - 5)


select discount_percent, sum(rating_count) from products group by discount_percent
	order by discount_percent asc;

# 9. Number of products sold for every rating by bike
# 10. Number of products sold for every rating in tshirt category
-- Bonus : Relation between price of the thisrt and its rating with respect to people rated