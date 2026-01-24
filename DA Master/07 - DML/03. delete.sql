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

-- Delete row based on user_id
delete from gfg.user where user_id = 5;
select * from gfg.user;

-- Delete row based on name
delete from gfg.user where first_name = 'Avneet';
select * from gfg.user;

-- Delete rows based on phone_no
delete from gfg.user where phone_number > 60000000;
select * from gfg.user;