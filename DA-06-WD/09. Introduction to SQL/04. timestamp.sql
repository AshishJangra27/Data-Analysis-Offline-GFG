-- Create the 'gfg' database if not exists
-- CREATE DATABASE IF NOT EXISTS gfg;
DROP TABLE gfg.users;

CREATE TABLE IF NOT EXISTS gfg.users (
	join_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(255),
    active BOOLEAN DEFAULT true,
    
    CONSTRAINT ck_valid_city CHECK (city IN ('City1', 'City2', 'City3', 'City4', 'City5')));
    
INSERT INTO users (user_id, username, email, age, city, active,join_date) VALUES
    (1001, 'user1', 'user1@example.com', 25,'City1',  true,CURRENT_TIMESTAMP),
    (1002, 'user2', 'user2@example.com', 30,'City2',  true,CURRENT_TIMESTAMP),
    (1003, 'user3', 'user3@example.com', 22,'City5',  true,CURRENT_TIMESTAMP);
    
SELECT * FROM gfg.users;