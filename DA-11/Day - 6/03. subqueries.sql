use swiggy;

select * from restaurants;


-- 1. Which restaurant of abohar is visied by least number of people?

select min(rating_count) as 'rating_count' from restaurants where city = "Abohar";
select * from restaurants where rating_count = 20 and city = "Abohar";

select * from restaurants where 
		city = 'abohar' and rating_count = (
						select min(rating_count) 
						from restaurants 
					where city = 'abohar');

-- 2. Which restaurant has generated maximum revenue all over india?
select max(rating_count * cost) from restaurants;

select * from restaurants where 
		rating_count * cost = (select max(rating_count * cost) from restaurants);

-- 3. How many restaurants are having rating more than the average rating?
select avg(rating) from restaurants;

select count(*) as "total_restaurants" from restaurants 
	where rating >= (select avg(rating) from restaurants);


-- 4. Which restaurant of Delhi has generated most revenue



select max(rating_count * cost) from restaurants;
select * from restaurants where rating_count * cost = 5000000;

select * from restaurants where 
	rating_count*cost = (select max(rating_count*cost) from restaurants) 
				and city = "Delhi";

select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants 
		where city = 'Delhi');

select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants 
		where city = 'Delhi') and city = 'Delhi';

-- 5. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue





select * from restaurants where 
	rating_count * cost = (select max(rating_count * cost) from restaurants where city = 'Delhi' )
							and
							 cost > (select avg(cost) from restaurants where city = 'Delhi')
									and city = 'Delhi';
                        

-- 6. Which restaurant of more than average cost of an restaurant in Delhi has generated most revenue


select city , sum(rating_count) from restaurants 
	group by city 
		order by sum(rating_count) 
			desc limit 5;





