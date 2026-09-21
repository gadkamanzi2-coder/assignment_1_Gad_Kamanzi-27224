# assignment_1_Gad_Kamanzi-27224
PL/SQL Assignment One - Sunrise Supermarket

## JOIN Queries

### JOIN Query 1: Orders with Customer Information

**Objective:**  
List every order together with the customer name, city, and order date.

**SQL Query:**

```sql
SELECT
    o.order_id,
    c.customer_name,
    c.city,
    o.order_date
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_date;
This query uses an INNER JOIN to combine the orders and customers tables using customer_id. It displays the order ID, customer name,city, and order date. The results are arranged from the earliest order date to the latest.
The query returned 15 orders, showing the customer information associated with each order.

This query helps Sunrise Supermarket identify which customers placed each order and the city where each customer is located. Management can use this information to understand customer ordering activity by location.

### JOIN Query 2: Order Items with Product Information

**Objective:**  
List every order item with the product name, category, price, and quantity.

**Explanation:**  
This query uses an `INNER JOIN` to combine the `order_items` and `products` tables using `product_id`. It shows which products were included in each order, together with their category, price, and quantity purchased.

**Result:**  
The query returned **30 order items**, displaying the product information and quantity for each order item.

**Business Interpretation:**  
This query helps Sunrise Supermarket understand which products customers purchase and the quantities ordered. Management can use this information to monitor product sales and understand purchasing patterns.

### JOIN Query 3: All Customers and Their Orders

**Objective:**  
List all customers and their orders where they exist, including customers who have no orders.

**Explanation:**  
This query uses a `LEFT JOIN` to combine the `customers` and `orders` tables using `customer_id`. A `LEFT JOIN` ensures that every customer is displayed, even if that customer has not placed an order. Customers without orders will have `NULL` values for the order information.

**Result:**  
The query displayed all **6 customers** and their orders. Patrick Tuyisenge was also displayed even though he has no orders, with `NULL` values for the order ID and order date.

**Business Interpretation:**  
This query helps Sunrise Supermarket identify both active and inactive customers. Management can see which customers have placed orders and identify customers who have not yet made any purchases.

## CTE Query

### CTE Query 1: Customers Above Average Spending

**Objective:**  
Calculate the total amount spent by each customer and return customers whose total spending is above the average customer spending.

**Explanation:**  
This query uses a Common Table Expression (CTE) named `customer_totals` to first calculate the total spending for each customer. The total is calculated by multiplying the quantity purchased by the product price and then adding the amounts for each customer. The main query compares each customer's total spending with the average spending of all customers and returns only customers who are above the average.

**Result:**  
The query returned **4 customers** whose total spending was above the average customer spending.

**Business Interpretation:**  
This query helps Sunrise Supermarket identify customers who contribute a higher amount of sales revenue than the average customer. Management can use this information to understand high-value customer purchasing activity and develop appropriate customer retention strategies.

## Window Functions

### Window Function 1: Rank Customers by Total Spending

**Objective:**  
Rank customers according to the total amount they have spent, with the highest spender ranked first.

**Explanation:**  
This query first calculates the total spending for each customer. It then uses the `RANK()` window function to assign a ranking based on total spending in descending order. The customer with the highest total spending receives rank 1.

**Result:**  
The query returned **5 customers with orders**, and each customer was assigned a spending rank based on their total amount spent. The customer with the highest spending received rank 1.

**Business Interpretation:**  
This query helps Sunrise Supermarket identify customers according to their total spending. Management can use this information to understand customer value and monitor which customers generate higher sales revenue.

### Window Function 2: Number Each Customer's Orders

**Objective:**  
Number each customer's orders according to the order in which they were placed.

**Explanation:**  
This query uses the `ROW_NUMBER()` window function to assign a sequential number to each order for every customer. `PARTITION BY customer_id` separates the orders by customer, while `ORDER BY order_date` arranges each customer's orders from the earliest to the latest.

### Window Function 3: Running Total of Revenue Over Time

**Objective:**  
Show the running total of revenue over time, ordered by order date.

**Explanation:**  
This query first calculates the revenue generated by each order by multiplying the quantity of each product by its price. It then uses the `SUM()` window function to calculate a running total of revenue. The orders are arranged by date so that the cumulative revenue can be tracked over time.

**Result:**  
The query returned **15 orders**, showing the revenue generated by each order and the running total revenue as the orders progressed by date.

**Business Interpretation:**  
This query helps Sunrise Supermarket monitor how total revenue accumulates over time. Management can use the running revenue figure to track sales performance and observe how each new order contributes to overall revenue.

**Result:**  
The query returned **15 orders**. Each customer's orders were numbered sequentially according to the date they were placed.

**Business Interpretation:**  
This query helps Sunrise Supermarket track the sequence of purchases made by each customer. Management can use this information to understand repeat purchasing behavior and the progression of customer orders over time.

### Window Function 4: Days Between Customer Orders

**Objective:**  
For customers with more than one order, show the number of days between their current order and their previous order.

**Explanation:**  
This query uses the `LAG()` window function to retrieve the previous order date for each customer. `PARTITION BY customer_id` keeps each customer's orders separate, while `ORDER BY order_date` arranges the orders chronologically. The difference between the current order date and the previous order date gives the number of days between purchases.

**Result:**  
The query returned **10 rows**, showing the previous order date and the number of days between consecutive orders for customers who placed multiple orders.

**Business Interpretation:**  
This query helps Sunrise Supermarket understand how frequently customers return to make purchases. Management can use this information to identify purchasing patterns and understand customer ordering frequency.
