-- Revenue by Region

SELECT region,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY region
ORDER BY total_revenue DESC;

-- Revenue by Product Category

SELECT product_category,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY product_category
ORDER BY total_revenue DESC;

-- Best Customers

SELECT customer_name,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY customer_name
ORDER BY total_revenue DESC;

-- Average Order Value

SELECT AVG(revenue) AS average_order_value
FROM orders;

-- Total Orders

SELECT COUNT(*) AS total_orders
FROM orders;

-- Monthly Revenue

SELECT substr(order_date,1,7) AS month,
       SUM(revenue) AS total_revenue
FROM orders
GROUP BY month
ORDER BY month;
