-- Database Creation & Schema Design
-- Create a database called `sales_data`.
-- Create the following tables:
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE customers (
customer_id INT PRIMARY KEY, 
first_name  VARCHAR (100), 
last_name VARCHAR (255), 
email TEXT,
phone_number INT);

CREATE TABLE  sales (
sale_id INT PRIMARY KEY, 
product_id INT, 
customer_id INT, 
sale_date DATE, 
quantity INT, 
total_amount DECIMAL (10, 2);

CREATE TABLE  payments (
payment_id INT PRIMARY KEY, 
sale_id INT, 
payment_method VARCHAR (50),
payment_date DATE, 
amount_paid INT);

--  Data Insertion
-- Inserting at least 10 products into the `products` table

INSERT INTO products (product_id, product_name, category, price) VALUES
(1001, 'spaghetti', 'A', 10),
(1002,  'milo', 'B', 9),
(1003, 'detergents', 'C', 8), 
(1004, 'pastries' 'D', 7), 
(1005, 'dairies', 'E', 6),
(1006, 'skin_hides', 'F', 5), 
(1007, 'leather', 'G', 4), 
(1008, 'plastics', 'H', 3),
(1009, 'metals', 'J', 2), 
(1010, 'stationeries', 'K', 1);


-- Inserting at least 40 customers into the `customers` table
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number) VALUES
(1001, 'john', 'bosco', 'john_bosco@yahoo.com', 070562312),
(1002, 'mercy', 'david', 'mercy_david@gmail.com', 080657832),
(1003, 'prinecss', 'pete', 'princess_pete@yahoo.com', 090765432),
(1004, 'john', 'paul', 'john_paul@gmail.com', 071234567),
(1005, 'bartholomew', 'ruth', 'barth_ruth@gmail.com', 081987654),
(1006, 'priscilla', 'price', 'priscilla_price@yahoo.uk', 091086532),
(1007, 'blessing', 'onete','blessing_onete@gmail.com', 070987654),
(1008, 'stones', 'cook', 'stones_cook@yahoo.com', 080234567),
(1009, 'rice', 'butt', 'rice_butt@gmail.com', 090345672),
(1010, 'briskly', 'ahmed', 'briskly_ahmed@yahoo.uk', 091023456),
(1011, 'kennedy', 'payne', 'kennedy_payne@yahoo.com', 070562312),
(1012, 'basil', 'greg','basil-greg@gmail.com', 080657832),
(1013, 'princewill', 'thomas', 'princewill_thomas@yahoo.com', 090765432),
(1014, 'michael', 'jordan', 'michael_jordan@gmail.com', 071234567),
(1015, 'jackson', 'paul', 'jackson_paul@gmail.com', 081987654),
(1016, 'cecil', 'john', 'cecil-john@yahoo.uk', 091086532),
(1017, 'precious', 'manuel','precious_manuel@gmail.com', 070987654),
(1018, 'bridgestone', 'moses', 'bridge_moss@yahoo.com', 080234567),
(1019, 'thaddeus', 'badmus', 'thaddeus_badmus@gmail.com', 090345672),
(1020, 'brooks', 'damsel', 'brooks-damsel@yahoo.uk', 091023456),
(1021, 'jude ', 'smith', 'jude_smith@yahoo.com', 070562312),
(1022, 'marcus', 'garvey', 'marcus_garvey@gmail.com', '80657832'),
(1023, 'pratt', 'bond','pratt_bond@yahoo.com', 090765432),
(1024, 'joyce', 'dols', 'joyce_dols@gmail.com', 071234567),
(1025, 'bruce', 'lee', 'bruce_lee@gmail.com', 081987654),
(1026, 'temple', 'hall', 'temple_hall@yahoo.uk', 091086532),
(1027, 'grace', 'harvard','grace_harvard@gmail.com', 070987654),
(1028, 'duke', 'oche', 'duke_oche@yahoo.com', 080234567),
(1029, 'godwin', 'dotu', 'godwin_dotu@gmail.com', 090345672),
(1030, 'price', 'campbell', 'price_campbell@yahoo.uk', 091023456),
(1031, 'thomas' 'oath', 'thomas_oath@yahoo.com', 080987654),
(1032, 'baker', 'straw', 'baker_straw@gmail.com'),
(1033, 'treadmill', 'dawn', 'treadmill_dawn@yahoo.uk'),
(1034, 'ninja', 'potter', 'ninja_potter@gmail.com'),
(1035, 'onogoruwa', 'dickson', 'onogoruwa_dickson@yahoo.com'),
(1036, 'babatunde', 'johnson', 'babatunde_johnson@gmail.com'),
(1037, 'uthman', 'dan', 'uthman_dan@gmail.com'),
(1038, 'muhammad', 'fisayo', 'muhammad_fisayo@yahoo.com'),
(1039, 'dele', 'emmanuel', 'dele_emmanuel@gmail.com'),
(1040, 'mohammed', 'mohammed', 'mohammed_mohammed@yahoo.uk');


-- Inserting at least 20 records into the `sales` table, making sure some customers buy multiple products
 INSERT INTO sales (sale_id, product_id, customer_id, sale_date, quantity, total_amount) VALUES
(1, 1, '2023-10-01', 2, 29.98),
(2, 1, '2023-10-02', 1, 15.50),
(3, 2, '2023-10-03', 5, 75.00),
(1, 3, '2023-10-04', 1, 14.99),
(2, 3, '2023-10-05', 3, 46.50),
(3, 4, '2023-10-06', 2, 30.00),
(1, 5, '2023-10-07', 4, 59.96),
(2, 6, '2023-10-08', 1, 15.50),
(3, 7, '2023-10-09', 2, 30.00),
(1, 8, '2023-10-10', 1, 14.99),
(2, 8, '2023-10-11', 1, 15.50),
(3, 9, '2023-10-12', 1, 15.00),
(1, 10, '2023-10-13', 1, 14.99),
(2, 10, '2023-10-14', 2, 31.00),
(3, 11, '2023-10-15', 3, 45.00),
(1, 12, '2023-10-16', 1, 14.99),
(2, 12, '2023-10-17', 1, 15.50),
(3, 1, '2023-10-18', 4, 60.00),
(1, 2, '2023-10-19', 1, 14.99),
(2, 3, '2023-10-20', 1, 15.50),
(3, 5, '2023-10-21', 2, 30.00);
 
-- Inserting payment records corresponding to the sales, with varying amounts and dates
INSERT INTO payments (payment_id, sale_id, payment_method, payment_date, amount) VALUES
(1001, 1, 'Credit Card', 2024-10-01, 29.98),
(1002, 2, 'PayPal', 2024-10-02, 15.50),
(1003, 3, 'Bank Transfer', 2024-10-03,  75.00),
(1004, 4, 'Credit Card', 2024-10-04, 14.99),
(1005, 5,'Cash', 2024-10-05, 46.50),
(1006, 6, 'Credit Card', 2024-10-06, 30.00),
(1007, 7, 'PayPal', 2024-10-07, 59.96 ),
(1008, 8,'Bank Transfer', 2024-10-08, 15.50),
(1009, 9, 'Credit Card', 2024-10-09,30.00),
(1010, 10, 'Cash', 2024-10-10, 14.99),
(1011, 11,'Credit Card', 2024-10-11, 15.50 ),
(1012, 12, 'PayPal', 2024-10-12, 15.00),
(1013, 13, 'Bank Transfer', 2024-10-13, 14.99),
(1014, 14, 'Credit Card', 2024-10-14, 31.00),
(1015, 15, 'Cash', 2024-10-15, 45.00),
(1016, 16, 'Credit Card', 2024-10-16, 14.99),
(1017, 17, 'PayPal', 2024-10-17, 15.50),
(1018, 18, 'Bank Transfer', 2024-10-18,  60.00),
(1019, 19, 'Credit Card', 2024-10-19, 14.99 ),
(1020, 20, 'Cash', 2024-10-20, 15.50 );

-- Analysis Using SQL Concepts
 -- GROUP BY:
-- Write a query to calculate the total quantity sold for each product category
SELECT category, SUM(quantity) AS total_quantity_sold
FROM sales 
JOIN products ON product_id = p.product_id
GROUP BY category;

-- Write a query to count the number of sales for each customer
SELECT customer_id, customer_name, COUNT(sale_id) AS total_sales
FROM customers 
LEFT JOIN sales ON customer_id = customer_id
GROUP BY customer_id, customer_name;
-- OR
SELECT customer_id, COUNT(*) AS total_sales
FROM sales
GROUP BY customer_id;

-- Write a query to find the total revenue generated by each payment method
SELECT payment_method, SUM(amount) AS total_revenue
FROM payments
GROUP BY payment_method;
-- Extend query
SELECT payment_method, SUM(amount) AS total_revenue,
COUNT(*) AS transaction_count
FROM payments
GROUP BY payment_method;

 -- ORDER BY:
-- Write a query to retrieve a list of products, sorted by price in descending order
SELECT product_id, product_name, category, price
FROM products
ORDER BY price DESC;

-- Write a query to get the sales records ordered by `sale_date` in ascending order
SELECT sale_id, product_id, customer_id, sale_date, quantity, total_amount
FROM sales
ORDER BY sale_date ASC;

-- Write a query to display customers sorted by their last name alphabetically
SELECT customer_id, first_name, last_name, email
FROM customers
ORDER BY last_name ASC;

 -- HAVING Clause:
-- Write a query to find products that have been sold more than 5 times, using `HAVING` with the
-- GROUP BY` statement
SELECT product_id, COUNT(*) AS total_sales
FROM sales 
GROUP BY product_id
HAVING COUNT(*) > 5;
-- Extended query with product information
SELECT product_id, product_name, COUNT(sale_id) AS total_sales
FROM products 
JOIN sales ON product_id = product_id
GROUP BY product_id, product_name
HAVING COUNT(sale_id) > 5;


-- Write a query to list customers who have made total purchases (sum of `total_amount`) exceeding $100
SELECT customer_id, SUM(total_amount) AS total_purchases
FROM purchases
GROUP BY customer_id
HAVING SUM(total_amount) > 100;

-- Write a query to find categories with a total sales revenue greater than $500
SELECT category_id, SUM(revenue) AS total_revenue
FROM sales
GROUP BY category_id
HAVING SUM(revenue) > 500;

-- LIMIT Clause:
-- Write a query to display the top 5 most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- Adjusting column selection if specific needed such as 'product_id'
SELECT product_id, product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Write a query to display the 3 most recent sales
SELECT *
FROM sales
ORDER BY sale_date DESC
LIMIT 3;

-- Displaying specific columns (like sale_id, customer_id, and sale_date), you can adjust the query like this
SELECT sale_id, customer_id, sale_date
FROM sales
ORDER BY sale_date DESC
LIMIT 3;

-- Write a query to list the first 5 customers who made purchases
SELECT DISTINCT customer_id
FROM purchases
ORDER BY purchase_date
LIMIT 5;

 -- Retrieving additional information about the customers, one might need to join the customers table thus
 SELECT customer_id, customer_name
FROM customers 
JOIN purchases ON customer_id = customer_id
ORDER BY purchase_date
LIMIT 5;

 -- ALIASING:
-- Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an alias `total_revenue` for the calculated field
SELECT product_id, SUM(total_amount) AS total_revenue
FROM sales
GROUP BY product_id;

-- Write a query to display each customer's full name as `customer_name` by concatenating first_name` and `last_name`
SELECT CONCAT(first_name, ' ', last_name) AS customer_name
FROM customers;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and quantity` for each sale
SELECT price, quantity, (price * quantity) AS sales_value
FROM sales;

 -- String Functions:
-- Write a query to display the product names in uppercase
SELECT UPPER(product_name) AS product_name_upper
FROM products;

-- Write a query to extract the domain from the `email` field of each customer
SELECT 
SUBSTRING_INDEX(email, '@', -1) AS email_domain
FROM customers;

-- Write a query to display the first three characters of each customer's `last_name`
SELECT 
LEFT(last_name, 3) AS first_three_chars
FROM customers;

-- Write a query that trims extra spaces around product names and displays them
SELECT 
TRIM(product_name) AS trimmed_product_name
FROM products;

-- Aggregate Functions:
-- Write a query to calculate the average price of all products
SELECT 
AVG(price) AS average_price
FROM sales;

-- Write a query to find the maximum `total_amount` from the `sales` table
SELECT 
MAX(total_amount) AS maximum_total_amount
FROM sales;

--  Write a query to calculate the total amount paid for all sales
SELECT 
SUM(total_amount) AS total_amount_paid
FROM sales;

-- Write a query to calculate the minimum and maximum sale quantities
SELECT 
MIN(quantity) AS minimum_quantity,
MAX(quantity) AS maximum_quantity
FROM sales;

-- Write a query to determine the number of distinct product categories available
SELECT 
COUNT(DISTINCT category) AS distinct_category_count
FROM products;

-- Additional Analysis Tasks
-- Write a query to identify the customer with the highest total purchase amount
SELECT customer_id, customer_name, SUM(total_amount) AS total_purchase
FROM customers 
JOIN sales ON customer_id = customer_id
GROUP BY customer_id, customer_name
ORDER BY total_purchase DESC
LIMIT 1;

-- Calculate the total number of products sold for each product category and sort the result in descending order
SELECT category_id, SUM(quantity_sold) AS total_sold
FROM products 
JOIN  sales ON product_id = product_id
GROUP BY category_id
ORDER BY total_sold DESC;

-- Write a query that retrieves the details of sales made in the last 30 days
SELECT *
FROM sales
WHERE sale_date >= NOW() - INTERVAL 30 DAY;

-- Create a query to display the top 3 customers with the most sales in terms of quantity
SELECT customer_id, customer_name, SUM(quantity_sold) AS total_quantity
FROM customers 
JOIN sales ON customer_id = customer_id
GROUP BY customer_id, customer_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Write a query to list all customers whose names start with the letter "J"
SELECT *
FROM customers
WHERE customer_name LIKE 'J%';

-- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` from `total_amount`
 SELECT sale_id,  total_amount, amount_paid, (total_amount - amount_paid) AS unpaid_amount
FROM sales;
-- OR If you want to filter out only the sales with an unpaid amount (i.e., where amount_paid is less than total_amount), you can add a WHERE clause
SELECT sale_id, total_amount, amount_paid, (total_amount - amount_paid) AS unpaid_amount
FROM sales
WHERE amount_paid < total_amount;

-- Write a query to find sales where the payment method was "Credit Card" and the total_amount` is greater than $50
SELECT *
FROM sales
WHERE payment_method = 'Credit Card'
AND total_amount > 50;

-- Write a query that lists all sales made by customers whose last names contain the letter "e"
SELECT *
FROM sales 
JOIN customers ON customer_id = customer_id
WHERE last_name LIKE '%e%';

 -- *NOTE The % wildcard allows for any characters before or after the "e."