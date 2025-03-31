use swiggy;
select * from restaurants;

drop table if exists rest_1, rest_2, rest_3;

select substring_index(link,'/',-1) as id,link, name, city, rating, rating_count, cuisine, cost FROM restaurants;


-- 1. Finding the restaurant_id from the link
select substring_index(substring_index(link,'/',-1),'-',-1) as id, name, city, rating, rating_count, cuisine, cost FROM restaurants;

-- 2. Updating the restaurant_id in the original table
create table if not exists rest_1 as 
		( select substring_index(substring_index(link,'/',-1),'-',-1) as id, name, city, rating, 
			rating_count, cuisine, cost FROM restaurants );
select * from rest_1;

-- 3. Clean the name column and update it on the table
create table if not exists rest_2 as
		( select id, lower(trim(name)) as name,city, rating, rating_count, cuisine, cost from rest_1 );
select * from rest_2;

-- 4. Clean the city &  cuisine column and update it on the table
create table if not exists rest_3 as
		( select id, lower(trim(name)) as name, lower(city) as 'city', rating, rating_count, 
			lower(cuisine) as 'cuisine', cost from rest_2 );
select * from rest_3;

-- 5. Remove the odd cuisines from the table
create table if not exists clean as
		( select * from rest_3 where cuisine not in ('combo','na','
			discount offer from garden cafe express kankurgachi',
			'svanidhi street food vendor','tex-mex','special discount from (hotel swagath)',
			'free delivery ! limited stocks!'));
select * from clean;

drop table if exists rest_1, rest_2, rest_3;