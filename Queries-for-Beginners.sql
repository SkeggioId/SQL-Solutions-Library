-- 1. Selecting Data from a Table
SELECT * FROM customers;

-- 2. Filtering Data with WHERE Clause
SELECT first_name, last_name FROM customers WHERE age > 30;

-- 3. Sorting Data with ORDER BY Clause
SELECT * FROM customers ORDER BY last_name ASC;

-- 4. Joining Tables with INNER JOIN
SELECT customers.first_name, orders.order_date
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

-- 5. Using GROUP BY to Aggregate Data
SELECT COUNT(product_id), order_date
FROM orders
GROUP BY order_date;

-- 6. Filtering Groups with HAVING Clause
SELECT employee_id, COUNT(order_id) as total_orders
FROM orders
GROUP BY employee_id
HAVING COUNT(order_id) > 5;

-- 7. Querying Data from Multiple Tables with UNION
SELECT first_name FROM customers
UNION
SELECT name FROM suppliers;

-- 8. Using Subqueries
SELECT first_name, last_name
FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders WHERE order_total > 500);

-- 9. Updating Data in a Table
UPDATE customers
SET email = 'new_email@example.com'
WHERE customer_id = 1;

-- 10. Deleting Data from a Table
DELETE FROM customers
WHERE last_visit_date < '2020-01-01';
