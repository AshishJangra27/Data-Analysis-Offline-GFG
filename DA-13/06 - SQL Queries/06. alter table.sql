CREATE DATABASE IF NOT EXISTS gfg;
USE gfg;
DROP TABLE IF EXISTS gfg.users;

CREATE TABLE gfg.users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT,
    city VARCHAR(255));   
SELECT * FROM gfg.users;
    
INSERT INTO users (user_id, username, email, age, city) VALUES
    (1, 'user1', 'user1@example.com', 25, 'City1'),
    (2, 'user2', 'user2@example.com', 30, 'City2'),
    (3, 'user3', 'user3@example.com', 22, 'City3'),
    (4, 'user4', 'user4@example.com', 28, 'City4'),
    (5, 'user5', 'user5@example.com', 35, 'City5');
SELECT * FROM gfg.users;
    
-- Adding New Columns
ALTER TABLE gfg.users
ADD COLUMN phone_number VARCHAR(15);
SELECT * FROM gfg.users;

 -- Modify Existing Constraints
ALTER TABLE gfg.users
MODIFY COLUMN email VARCHAR(255) UNIQUE;
SELECT * FROM gfg.users;

-- Change column name
ALTER TABLE gfg.users
CHANGE COLUMN age user_age INT;
SELECT * FROM gfg.users;

-- Set Default Value
ALTER TABLE gfg.users
ALTER COLUMN user_age SET DEFAULT 18;
SELECT * FROM gfg.users;

-- DROP Column
ALTER TABLE gfg.users
DROP COLUMN phone_number;
SELECT * FROM gfg.users;