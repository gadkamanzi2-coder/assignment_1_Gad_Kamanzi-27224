-- Sunrise Supermarket Assignment One
-- Step 5: Window Function Queries
-- DBMS: Oracle Database 21c


-- Window Function 1: Rank Customers by Total Spending

WITH customer_totals AS (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(oi.quantity * p.price) AS total_spend
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT
    customer_id,
    customer_name,
    total_spend,
    RANK() OVER (ORDER BY total_spend DESC) AS spending_rank
FROM customer_totals
ORDER BY spending_rank;


-- Window Function 2: Number Each Customer's Orders

SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    o.order_date,
    ROW_NUMBER() OVER (
        PARTITION BY c.customer_id
        ORDER BY o.order_date, o.order_id
    ) AS order_number
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY c.customer_id, order_number;


-- Window Function 3: Running Total of Revenue Over Time

WITH order_revenue AS (
    SELECT
        o.order_id,
        o.order_date,
        SUM(oi.quantity * p.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY o.order_id, o.order_date
)
SELECT
    order_id,
    order_date,
    revenue,
    SUM(revenue) OVER (
        ORDER BY order_date, order_id
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_revenue
FROM order_revenue
ORDER BY order_date, order_id;


-- Window Function 4: Days Between Customer Orders

WITH customer_orders AS (
    SELECT
        c.customer_id,
        c.customer_name,
        o.order_id,
        o.order_date,
        LAG(o.order_date) OVER (
            PARTITION BY c.customer_id
            ORDER BY o.order_date, o.order_id
        ) AS previous_order_date
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
)
SELECT
    customer_id,
    customer_name,
    order_id,
    order_date,
    previous_order_date,
    order_date - previous_order_date AS days_between_orders
FROM customer_orders
WHERE previous_order_date IS NOT NULL
ORDER BY customer_id, order_date;
