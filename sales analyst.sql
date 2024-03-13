create database sales_analysis;
use sales_analysis;

-- Customers

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);
INSERT INTO Customers (customer_id, customer_name, email, phone_number)
VALUES
(1, 'John Doe', 'john.doe@email.com', '123-456-7890'),
(2, 'Jane Smith', 'jane.smith@email.com', '987-654-3210'),
(3, 'Bob Johnson', 'bob.johnson@email.com', '555-123-4567'),
(4, 'Alice Williams', 'alice.williams@email.com', '999-888-7777'),
(5, 'Charlie Brown', 'charlie.brown@email.com', '444-555-6666'),
(6, 'Emma Davis', 'emma.davis@email.com', '111-222-3333'),
(7, 'Sam Wilson', 'sam.wilson@email.com', '777-888-9999'),
(8, 'Olivia White', 'olivia.white@email.com', '666-555-4444'),
(9, 'Daniel Miller', 'daniel.miller@email.com', '123-789-4560'),
(10, 'Sophia Turner', 'sophia.turner@email.com', '987-654-3210'),
(11, 'Ethan Moore', 'ethan.moore@email.com', '555-789-1234'),
(12, 'Ava Taylor', 'ava.taylor@email.com', '444-333-2222'),
(13, 'Matthew Hall', 'matthew.hall@email.com', '111-222-3333'),
(14, 'Grace Martin', 'grace.martin@email.com', '777-888-9999'),
(15, 'Ryan Martinez', 'ryan.martinez@email.com', '666-555-4444'),
(16, 'Lily Anderson', 'lily.anderson@email.com', '123-789-4560'),
(17, 'Carter Young', 'carter.young@email.com', '987-654-3210'),
(18, 'Zoe Johnson', 'zoe.johnson@email.com', '555-789-1234'),
(19, 'Andrew Adams', 'andrew.adams@email.com', '444-333-2222'),
(20, 'Nora Thompson', 'nora.thompson@email.com', '111-222-3333'),
(21, 'Owen Scott', 'owen.scott@email.com', '777-888-9999'),
(22, 'Lucy Harris', 'lucy.harris@email.com', '666-555-4444'),
(23, 'Mason Clark', 'mason.clark@email.com', '123-789-4560'),
(24, 'Aria Turner', 'aria.turner@email.com', '987-654-3210'),
(25, 'Leo White', 'leo.white@email.com', '555-789-1234');

select * from customers;


-- Products

CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    unit_price DECIMAL(10,2)
);
INSERT INTO Products (product_id, product_name, unit_price)
VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 400.00),
(4, 'Desktop Computer', 1500.00),
(5, 'Headphones', 50.00),
(6, 'Printer', 300.00),
(7, 'Camera', 600.00),
(8, 'Smart TV', 1000.00),
(9, 'Gaming Console', 400.00),
(10, 'Wireless Mouse', 20.00),
(11, 'External Hard Drive', 100.00),
(12, 'Fitness Tracker', 80.00),
(13, 'Bluetooth Speaker', 40.00),
(14, 'Coffee Maker', 60.00),
(15, 'Toaster', 25.00),
(16, 'Blender', 50.00),
(17, 'Vacuum Cleaner', 120.00),
(18, 'Microwave Oven', 80.00),
(19, 'Air Purifier', 150.00),
(20, 'Portable Charger', 30.00),
(21, 'Electric Toothbrush', 40.00),
(22, 'Sunglasses', 35.00),
(23, 'Backpack', 25.00),
(24, 'Watch', 70.00),
(25, 'Digital Camera', 200.00);

select * from products;


-- Salespersons

CREATE TABLE Salespersons (
    salesperson_id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    email VARCHAR(100)
);
INSERT INTO Salespersons (salesperson_id, salesperson_name, email)
VALUES
(1, 'Michael Johnson', 'michael.johnson@email.com'),
(2, 'Emily Davis', 'emily.davis@email.com'),
(3, 'Brian Smith', 'brian.smith@email.com'),
(4, 'Jessica Anderson', 'jessica.anderson@email.com'),
(5, 'David Taylor', 'david.taylor@email.com'),
(6, 'Sophie White', 'sophie.white@email.com'),
(7, 'Daniel Brown', 'daniel.brown@email.com'),
(8, 'Olivia Miller', 'olivia.miller@email.com'),
(9, 'Ethan Wilson', 'ethan.wilson@email.com'),
(10, 'Emma Thomas', 'emma.thomas@email.com'),
(11, 'Christopher Turner', 'christopher.turner@email.com'),
(12, 'Grace Harris', 'grace.harris@email.com'),
(13, 'Ryan Martin', 'ryan.martin@email.com'),
(14, 'Lily Baker', 'lily.baker@email.com'),
(15, 'William Clark', 'william.clark@email.com'),
(16, 'Ava Martinez', 'ava.martinez@email.com'),
(17, 'Noah Young', 'noah.young@email.com'),
(18, 'Zoe Harris', 'zoe.harris@email.com'),
(19, 'James Turner', 'james.turner@email.com'),
(20, 'Nora Scott', 'nora.scott@email.com'),
(21, 'Henry White', 'henry.white@email.com'),
(22, 'Chloe Adams', 'chloe.adams@email.com'),
(23, 'Mason Allen', 'mason.allen@email.com'),
(24, 'Aria Wilson', 'aria.wilson@email.com'),
(25, 'Logan Martin', 'logan.martin@email.com');

select*from salespersons;


--  Orders

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    salesperson_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id)
);
INSERT INTO Orders (customer_id, salesperson_id, order_date)
VALUES
(1, 1, '2024-02-25'),
(2, 2, '2024-02-26'),
(3, 3, '2024-02-27'),
(4, 4, '2024-02-28'),
(5, 5, '2024-02-29'),
(6, 6, '2024-03-01'),
(7, 7, '2024-03-02'),
(8, 8, '2024-03-03'),
(9, 9, '2024-03-04'),
(10, 10, '2024-03-05'),
(11, 11, '2024-03-06'),
(12, 12, '2024-03-07'),
(13, 13, '2024-03-08'),
(14, 14, '2024-03-09'),
(15, 15, '2024-03-10'),
(16, 16, '2024-03-11'),
(17, 17, '2024-03-12'),
(18, 18, '2024-03-13'),
(19, 19, '2024-03-14'),
(20, 20, '2024-03-15'),
(21, 21, '2024-03-16'),
(22, 22, '2024-03-17'),
(23, 23, '2024-03-18'),
(24, 24, '2024-03-19'),
(25, 25, '2024-03-20');

select* from orders;

-- OrderDetails

CREATE TABLE OrderDetails (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO OrderDetails (order_id, product_id, quantity, total_price)
VALUES
(1, 1, 2, 2400.00),
(2, 2, 3, 2400.00),
(3, 3, 1, 400.00),
(4, 4, 4, 6000.00),
(5, 5, 2, 100.00),
(6, 6, 1, 300.00),
(7, 7, 3, 1800.00),
(8, 8, 5, 5000.00),
(9, 9, 2, 800.00),
(10, 10, 1, 800.00),
(11, 11, 4, 1500.00),
(12, 12, 3, 240.00),
(13, 13, 1, 40.00),
(14, 14, 2, 120.00),
(15, 15, 3, 75.00),
(16, 16, 4, 200.00),
(17, 17, 2, 240.00),
(18, 18, 1, 80.00),
(19, 19, 3, 450.00),
(20, 20, 2, 60.00),
(21, 21, 1, 40.00),
(22, 22, 4, 140.00),
(23, 23, 3, 75.00),
(24, 24, 1, 70.00),
(25, 25, 2, 400.00);

select * from OrderDetails;

-- List all products and their price --

SELECT product_name, unit_price
FROM Products;

-- List all orders along with the corresponding customer name, salesperson name, and order date --

SELECT o.order_id, c.customer_name, s.salesperson_name, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Salespersons s ON o.salesperson_id = s.salesperson_id;

-- List all order details including the product name, quantity, and total price --

SELECT od.order_id, p.product_name, od.quantity, od.total_price
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id;

-- List the total sales amount for each order--

SELECT order_id, SUM(total_price) AS total_sales
FROM OrderDetails
GROUP BY order_id;

-- List the total sales amount for each salesperson --

SELECT s.salesperson_name, SUM(od.total_price) AS total_sales
FROM Orders o
JOIN Salespersons s ON o.salesperson_id = s.salesperson_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY s.salesperson_name;

-- List the total number of products sold for each product --

SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name;

-- List the top 5 customers who spent the most --

SELECT c.customer_name, SUM(od.total_price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;

-- List the top 5 best-selling products --

SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- List the salesperson who generated the highest total sales amount --

SELECT s.salesperson_name, SUM(od.total_price) AS total_sales
FROM Salespersons s
JOIN Orders o ON s.salesperson_id = o.salesperson_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY s.salesperson_name
ORDER BY total_sales DESC
LIMIT 1;

-- List the total number of orders placed each month --

SELECT MONTH(order_date) AS month, COUNT(*) AS total_orders
FROM Orders
GROUP BY month;

-- List the total revenue generated each month --

SELECT MONTH(order_date) AS month, SUM(total_price) AS total_revenue
FROM OrderDetails
JOIN Orders ON OrderDetails.order_id = Orders.order_id
GROUP BY month;

-- List the average order value (average total price) for each customer --

SELECT c.customer_name, AVG(od.total_price) AS avg_order_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.customer_name;








