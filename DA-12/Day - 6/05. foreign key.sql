CREATE DATABASE IF NOT EXISTS gfg;

-- DROP TABLE gfg.users;

CREATE TABLE IF NOT EXISTS gfg.users(
	uid INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL);
    
CREATE TABLE IF NOT EXISTS gfg.orders(
	oid INT PRIMARY KEY AUTO_INCREMENT UNIQUE,
    uid INT NOT NULL,
    order_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT order_fk FOREIGN KEY(uid) REFERENCES users(uid));
    
INSERT INTO gfg.users (name, email) VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Bob Johnson', 'bob.johnson@example.com');

INSERT INTO gfg.orders (uid)
VALUES
    (1),(2);

DROP TABLE users;

SELECT * FROM gfg.orders;
SELECT * FROM gfg.users;