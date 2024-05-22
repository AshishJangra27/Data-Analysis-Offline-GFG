use gfg;
select * from products;

-- Find the products where the product name ends with s
select * from products where product_name like '%s';

-- Find the products where the brand name contains 'ad' 
select * from products where brand_name like '%ad%';

-- Find the products where name stands with P and ends with S
select * from products where brand_name like 'p%s';

-- Find the products where the product name starting with s
select * from products where product_name like 'S%';

-- Find the products where the product name contains with 'sho'
select * from products where product_name like '%SHO%';

-- Find the products where the brans name is exactly of 6 cahracters long
select * from products where brand_name like '______';

-- Find the products where the second character of the brans name is s
select * from products where brand_name like '_s%';
