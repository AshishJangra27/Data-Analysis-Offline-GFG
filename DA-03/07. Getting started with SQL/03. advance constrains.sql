-- Create the 'gfg' database if not exists
CREATE DATABASE IF NOT EXISTS gfg;

CREATE TABLE IF NOT EXISTS gfg.users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(255),
    active BOOLEAN DEFAULT true);
    
INSERT INTO users (user_id, username, email, age, city, active) VALUES
    (1, 'user1', 'user1@example.com', 25, 'City1',  true),
    (2, 'user2', 'user2@example.com', 30, 'City2',  true),
    (3, 'user3', 'user3@example.com', 22, 'City3',  true),
    (4, 'user4', 'user4@example.com', 28, 'City4',  true),
    (5, 'user5', 'user5@example.com', 35, 'City5',  true);
    
SELECT * FROM gfg.users;