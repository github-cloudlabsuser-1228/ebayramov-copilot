CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_fname VARCHAR(50),
    customer_lname VARCHAR(50),
    customer_phone VARCHAR(15),
    customer_address VARCHAR(100)
);  
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
INSERT INTO customers (customer_id, customer_fname, customer_lname, customer_phone, customer_address) VALUES
(1, 'John', 'Doe', '123-456-7890', '123 Elm St'),
(2, 'Jane', 'Smith', '234-567-8901', '456 Oak St'),
(3, 'Alice', 'Johnson', '345-678-9012', '789 Pine St'),
(4, 'Bob', 'Brown', '456-789-0123', '101 Maple St'),
(5, 'Charlie', 'Davis', '567-890-1234', '202 Birch St');
INSERT INTO orders (order_id, customer_id, order_date, order_total) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 2, '2023-01-02', 150.00),
(3, 3, '2023-01-03', 200.00),
(4, 4, '2023-01-04', 250.00),
(5, 5, '2023-01-05', 300.00);
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_items;
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 101, 2, 50.00),
(2, 1, 102, 1, 25.00),
(3, 2, 103, 3, 30.00),
(4, 3, 104, 4, 40.00),
(5, 4, 105, 5, 50.00);
