CREATE DATABASE IF NOT EXISTS openai;

CREATE TABLE IF NOT EXISTS openai.users (
    user_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    mail VARCHAR(30) UNIQUE NOT NULL,
    phone VARCHAR(18) UNIQUE NOT NULL,
    dob DATE,
    city VARCHAR(30),
    marital_status VARCHAR(10),
    sex VARCHAR(10) CHECK (sex IN ('male', 'female', 'other'))
);

CREATE TABLE IF NOT EXISTS openai.inventory (
    product_id VARCHAR(15) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    quantity INT CHECK (quantity >= 0),
    category VARCHAR(30),
    marked_price DECIMAL(10,2) CHECK (marked_price >= 0),
    discounted_price DECIMAL(10,2) CHECK (discounted_price >= 0),
    manufacturer VARCHAR(50),
    date_of_man DATE,
    batch_no VARCHAR(20),
    expiry_date DATE
);

CREATE TABLE IF NOT EXISTS openai.transactions (
    trans_id VARCHAR(15) PRIMARY KEY,
    product_id VARCHAR(15),
    user_id VARCHAR(10),
    amount DECIMAL(10,2) CHECK (amount >= 0),
    mode_of_payment VARCHAR(20) CHECK (mode_of_payment IN ('cash', 'card', 'upi', 'wallet')),
    date_time TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES openai.inventory(product_id),
    FOREIGN KEY (user_id) REFERENCES openai.users(user_id)
);
