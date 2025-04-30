-- PAYMENT STATUS ANALYSIS

-- 3.1 Payment Status Summary
SELECT payment_status, COUNT(*) AS count
FROM payments
GROUP BY payment_status;

-- 3.2 Payment Methods Used
SELECT payment_method, COUNT(*) AS count
FROM payments
GROUP BY payment_method
ORDER BY count DESC;

-- 3.3 Failure Rate by Method
SELECT 
  payment_method,
  COUNT(*) AS total_payments,
  SUM(CASE WHEN payment_status = 'failed' THEN 1 ELSE 0 END) AS failed_payments,
  SUM(CASE WHEN payment_status = 'completed' THEN 1 ELSE 0 END) AS completed_payments,
  ROUND(100.0 * SUM(CASE WHEN payment_status = 'failed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS failure_rate_percentage
FROM payments
GROUP BY payment_method
ORDER BY failure_rate_percentage DESC;

-- ORDER DETAIL REPORT 
SELECT 
    o.order_id,
    o.customer_id,
    o.order_date,
    o.order_amount,
    o.order_status,
    p.payment_id,
    p.payment_date,
    p.payment_amount,
    p.payment_method,
    p.payment_status
FROM customer_orders o
LEFT JOIN payments p
    ON o.order_id = p.order_id
ORDER BY o.order_date DESC;


-- Orders with Completed/Failed Payments
SELECT 
  p.payment_status,
  COUNT(DISTINCT o.order_id) AS order_count
FROM customer_orders o
LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status IN ('completed', 'failed')
GROUP BY p.payment_status;

