
-- 1.1 Total Orders - 15000
SELECT COUNT(*) AS total_orders
FROM customer_orders;

-- 1.2 Orders by Status ( pending - 5069 , delivered - 5057 , shipped - 4874 )
SELECT order_status, COUNT(*) AS order_count
FROM customer_orders
GROUP BY order_status
ORDER BY order_count DESC;

-- 1.3 Monthly Revenue Trend (only for delivered orders)
SELECT 
  monthname(order_date) AS order_month,
  round(SUM(order_amount) , 3) AS total_revenue
FROM customer_orders
WHERE order_status = 'delivered'
GROUP BY month(order_date),order_month
ORDER BY month(order_date);

-- 1.4 Top 5 Highest Value Orders
SELECT order_id, order_amount
FROM customer_orders
ORDER BY order_amount DESC
LIMIT 5;





