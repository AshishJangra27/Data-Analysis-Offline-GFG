-- Create the 'gfg' database if not exists
-- CREATE DATABASE IF NOT EXISTS gfg;
DROP TABLE gfg.users;

CREATE TABLE IF NOT EXISTS gfg.users (
	join_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(255) CHECK (city IN ('City1', 'City2', 'City3', 'City4', 'City5')),
    active BOOLEAN DEFAULT true);
    
INSERT INTO gfg.users (user_id, username, email, city) VALUES
    (1001, 'user1', 'user1@example.com','City1'),
    (1002, 'user1', 'user@example.com' ,'City1'),
    (1003, 'user1', 'user3@example.com','City5');
    
SELECT * FROM gfg.users;

