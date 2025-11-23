use swiggy;



select round((count(*)/100)*20,0) as 'top_20' from restaurants;


with 
q1 as 
	(
		select sum(rating_count*cost) as 'total_revenue' from restaurants
	),
 q2 as   
	(
		select sum(cost*rating_count) as 'revenue_top_20' from (
			select *, rating_count*cost as 'revenue' from restaurants 
				order by revenue desc
					limit 11825) t1
	)

select total_revenue,revenue_top_20, (revenue_top_20/total_revenue)*100  from q1,q2;


# 1. Top 20% rests (revenue)
-- top 20%

select count(*) from restaurants;







with
	q1 as ( select sum(cost*rating_count) as 'top_revenue'
			from (select *, cost*rating_count ,row_number() over(order by cost*rating_count desc) as 'rank' from restaurants) t
			where t.rank <= (((select count(*) from restaurants)/100)*20)),
            
	q2 as ( select sum(rating_count*cost) as 'total_revenue' from restaurants)
    
SELECT round((top_revenue/total_revenue)*100) as 'revenue %' FROM q1, q2;
