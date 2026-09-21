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
This query uses an INNER JOIN to combine the orders and customers tables using customer_id. It displays the order ID, customer name, city, and order date. The results are arranged from the earliest order date to the latest.
The query returned 15 orders, showing the customer information associated with each order.

This query helps Sunrise Supermarket identify which customers placed each order and the city where each customer is located. Management can use this information to understand customer ordering activity by location.

