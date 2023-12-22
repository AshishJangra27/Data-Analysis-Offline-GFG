CREATE DATABASE IF NOT EXISTS gfg;
USE gfg;
drop table gfg.users;

CREATE TABLE IF NOT EXISTS gfg.users (
    user_id INT,
    username VARCHAR(255),
    email VARCHAR(255),
    age INT,
    city VARCHAR(255));   
    
INSERT INTO gfg.users (user_id, username, email, age, city) VALUES (27, 'user1', 'user1@example.com', 25, 'City1');
INSERT INTO gfg.users VALUES (2, 'user1', 'user1@example.com', 25, 'City1');
INSERT INTO gfg.users (username,user_id, email, age, city) VALUES ('users', 23, 'user1@example.com', 25, 'City1');

INSERT INTO gfg.users VALUES
(30, 'user4', 'user1@example.com', 25, 'City1'),
(31, 'user5', 'user1@example.com', 25, 'City1'),
(32, 'user6', 'user1@example.com', 25, 'City1'),
(33, 'user7', 'user1@example.com', 25, 'City1');

SELECT * FROM gfg.users;