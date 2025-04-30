-- 2 CUSTOMER ANALYSIS 

-- 2.1 Total unique customers - 7334
select count(distinct customer_id ) as total_customers
from customer_orders;

-- 2.2 Repeated Customers - 4402
SELECT COUNT(*) AS repeat_customers
FROM (
    SELECT customer_id
    FROM customer_orders
    GROUP BY customer_id
    HAVING COUNT(order_id) > 1
) AS repeat_customer_subquery;

-- 2.3 order per customer
SELECT customer_id, COUNT(order_id) AS total_orders
FROM customer_orders
GROUP BY customer_id
ORDER BY total_orders DESC;

-- 2.4 new customers per month  
WITH first_order_dates AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM customer_orders
    GROUP BY customer_id
)
SELECT 
    monthname( first_order_date) AS month,
    COUNT(customer_id) AS new_customers
FROM first_order_dates
GROUP BY month(first_order_date),month
ORDER BY month(first_order_date);
