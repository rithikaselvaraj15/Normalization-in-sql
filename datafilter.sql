-- 1. Insert 5 orders with different values
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO orders (product_name, quantity, price) VALUES
('Apple Watch', 5, 250),
('AirPods', 1, 150),
('Asus Laptop', 3, 450),
('Boat Speaker', 4, 120),
('Nike Shoes', 2, 300);

-- 2. Select all orders where quantity > 2
SELECT * FROM orders
WHERE quantity > 2;

-- 3. Select orders where price is between 100 and 500
SELECT * FROM orders
WHERE price BETWEEN 100 AND 500;

-- 4. Fetch orders where product_name starts with 'A'
SELECT * FROM orders
WHERE product_name LIKE 'A%';

-- 5. Fetch orders sorted by quantity in descending order
SELECT * FROM orders
ORDER BY quantity DESC;

-- 6. Use CONCAT() to combine event_name and event_date
CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(100),
    event_date DATE
);

SELECT CONCAT(event_name, ' - ', event_date) AS full_event
FROM events;

