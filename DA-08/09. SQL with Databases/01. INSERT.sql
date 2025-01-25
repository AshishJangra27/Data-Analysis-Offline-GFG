-- CREATE DATABASE IF NOT EXISTS gfg;
USE gfg;

drop table if exists users;

CREATE TABLE IF NOT EXISTS users (
    user_id INT NOT NULL DEFAULT 10,
    username VARCHAR(255),
    email VARCHAR(255),
    age INT,
    city VARCHAR(255));   

select * from users;

    
INSERT INTO users (user_id, username, email, age, city) VALUES  
	             (27,'user1@example.com', 'user1', 25, 'City1');
                 
select * from users;

   
INSERT INTO users (age,email) VALUES  
	             (25,'user1@example.com');
                 
select * from users;




INSERT INTO gfg.users VALUES 
	(2, 'user1', 'user1@example.com', 25, 'City1');

select * from users;


INSERT INTO gfg.users (email, age, city) VALUES 
	('user1@example.com', 25, 'City1');
    
select * from users;

INSERT INTO gfg.users VALUES
(30, 'user4', 'user1@example.com', 25, 'City1'),
(31, 'user5', 'user1@example.com', 25, 'City1'),
(32, 'user6', 'user1@example.com', 25, 'City1'),
(33, 'user7', 'user1@example.com', 25, 'City1');

SELECT * FROM gfg.users;