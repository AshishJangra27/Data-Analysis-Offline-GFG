use swiggy;
select * from restaurants;

-- 1. Creating the table and feeding the values
create table if not exists tbl 
		(id varchar(255), name varchar(255), city varchar(255), 
        rating float, cost int, cuisine varchar(255), 
        rating_count int, revenue int);


insert into tbl 
	(select id, name, city, rating, cost, cuisine, 
    rating_count,cost*rating_count as 'revenue' 
    from 
		(select *, 
        cost*rating_count ,row_number() over(partition by cuisine order by cost*rating_count desc) as 'rank' 
        from restaurants) t
	where t.rank <= 5);
select * from tbl;


create table if not exists results as (select * from restaurants);


-- 2. Creating the table directly
create table if not exists results as (select * from restaurants);
select * from results;

-- 3. Creating a temporary table
create temporary table if not exists temp_results as (select * from restaurants);
select * from temp_results;


create table if not exists top_1000 as 
	(
		select *, cost*rating_count as 'revenue'
		from restaurants
		order by revenue desc
		limit 1000 
    );
select * from top_1000;


select distinct cuisine from restaurants;
