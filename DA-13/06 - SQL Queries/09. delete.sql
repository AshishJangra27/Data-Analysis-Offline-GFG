DROP TABLE IF EXISTS gfg.user;

CREATE TABLE gfg.user (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100));

INSERT INTO gfg.user (user_id ,first_name, last_name, phone_number, email)
VALUES
    (1, 'Ashish' , 'Jangra',9274927320, 'ashish@gmail.com' ),
    (2, 'Diksha' , 'Arora' ,5274927320, 'diksha@gmail.com' ),
    (3, 'Gupreet', 'Singh' ,8274927320, 'guri@gmail.com'   ),
    (4, 'xAvneet' , 'Kaur'  ,6274927320, 'avneet@gmail.com' ),
    (5, 'Santosh', 'Singh' ,74927320, 'santosh@gmail.com');
    
select * from gfg.user;

-- Delete row based on user_id
delete from gfg.user where user_id = 1;
select * from gfg.user;

-- Delete row based on name
delete from gfg.user where first_name = 'Diksha';
select * from gfg.user;

-- Delete rows based on phone_no
delete from gfg.user where phone_number < 5999999999;
select * from gfg.user;
