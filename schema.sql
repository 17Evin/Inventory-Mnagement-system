CREATE DATABASE IF NOT EXISTS inventorydb;
USE inventorydb;

CREATE TABLE IF NOT EXISTS products (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  quantity INT,
  price DOUBLE
);

INSERT INTO products (name, description, quantity, price) VALUES
('Screwdriver', 'Flat-head screwdriver', 25, 3.5),
('Hammer', '16oz claw hammer', 10, 8.75);
