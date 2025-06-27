
-- a. SELECT, WHERE, ORDER BY, GROUP BY
-- Total number of products per category
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category
ORDER BY total_products DESC;

-- b. INNER JOIN
-- Orders with customer names
SELECT o.order_id, c.customer_name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- c. LEFT JOIN (RIGHT JOIN skipped if not supported)
-- List all products and their ordered quantity (if any)
SELECT p.product_name, COALESCE(SUM(oi.quantity), 0) AS total_ordered
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_ordered DESC;

-- d. Subqueries
-- Customers who placed orders with total > 50000
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE total_amount > 50000
);

-- e. Aggregates (SUM, AVG)
-- Average order amount
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- Total revenue generated
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- f. Create Views & Indexing
-- View: Top spending customers
CREATE VIEW top_customers AS
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- Index to speed up filtering by customer
CREATE INDEX idx_customer_id ON orders(customer_id);
