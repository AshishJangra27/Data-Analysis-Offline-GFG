DROP TABLE IF EXISTS gfg.user;

CREATE TABLE gfg.user (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100));


INSERT INTO gfg.user (user_id ,first_name, last_name, phone_number, email)
VALUES
    (1, 'Ashish' , 'Jangra',12312312, 'ashish@gmail.com' ),
    (2, 'Diksha' , 'Arora' ,53343322, 'diksha@gmail.com' ),
    (3, 'Gupreet', 'Singh' ,92384022, 'guri@gmail.com'   ),
    (4, 'Avneet' , 'Kaur'  ,93457334, 'avneet@gmail.com' ),
    (5, 'Santosh', 'Singh' ,79834934, 'santosh@gmail.com');
    
select * from gfg.user;

 -- Update the username with user_id = 1
 update gfg.user set first_name = 'A' where user_id = 1;
 select * from gfg.user;

--  Update multiple
 update gfg.user set first_name = 'Ashish', phone_number = 7015012345 where user_id = 1;
 select * from gfg.user;
 
-- Going one step ahead
update gfg.user 
set first_name = 'Ashish', phone_number = 7015012310, last_name = '' 
where user_id = 1;
select * from gfg.user;

-- Update based on name
update gfg.user 
set first_name = 'Ash', phone_number = 7015012310, last_name = '' 
where first_name = 'Ashish';
select * from gfg.user;

-- Update based on phone no
update gfg.user 
set first_name = 'Ashish', phone_number = 70150123, last_name = '' 
where phone_number = 7015012310;
select * from gfg.user;