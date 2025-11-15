
-- Sales Analytics SQL Portfolio Project
-- Full SQL Script

CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

-- Customers Table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- Products Table
CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Sales Table
CREATE TABLE IF NOT EXISTS sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert Customers
INSERT INTO customers (customer_name, city, country) VALUES
('Ali Khan', 'Lahore', 'Pakistan'),
('Sara Ahmed', 'Karachi', 'Pakistan'),
('John Peter', 'Islamabad', 'Pakistan'),
('Fatima Noor', 'Multan', 'Pakistan');

-- Insert Products
INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 85000),
('Mobile Phone', 'Electronics', 45000),
('Headphones', 'Accessories', 3500),
('Keyboard', 'Accessories', 1500);

-- Insert Sales
INSERT INTO sales (customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 1, '2025-01-05'),
(2, 2, 2, '2025-01-10'),
(3, 4, 1, '2025-01-15'),
(4, 3, 3, '2025-01-20'),
(1, 2, 1, '2025-02-01'),
(2, 1, 1, '2025-02-05');
