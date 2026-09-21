# PL/SQL Assignment One - Sunrise Supermarket

**Name:** Gad Kamanzi
**Student ID:** 27234
**DBMS:** Oracle Database 21c

## 1. Business Scenario

Sunrise Supermarket sells different products to customers. Customers can place orders containing different products.

The purpose of this assignment is to use SQL to understand customer orders, products, spending, and sales trends.

The database contains:

* 6 customers
* 10 products
* 6 categories
* 15 orders
* 30 order items
* Orders from different dates

## 2. Project Structure

```text
assignment_1_Gad_Kamanzi-27224/
├── README.md
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_join_queries.sql
│   ├── 04_cte_query.sql
│   └── 05_window_queries.sql
└── screenshots/
    ├── join_query_1.png
    ├── join_query_2.png
    ├── join_query_3.png
    ├── cte_query.png
    ├── window_function_1.png
    ├── window_function_2.png
    ├── window_function_3.png
    └── window_function_4.png
```

## 3. How to Run

1. Open Oracle Database 21c using SQL Developer.
2. Run `01_create_tables.sql`.
3. Run `02_insert_data.sql`.
4. Run the JOIN, CTE, and window-function queries from the remaining SQL files.
5. The SQL files contain the complete queries used in this assignment.

## 4. JOIN Queries

### JOIN 1 — Orders and Customers

**Purpose:** Shows each order together with the customer's name, city, and order date.

**Result:** 15 orders were returned.

**Business use:** Helps the supermarket see who placed each order and where the customers are located.

**SQL:** `sql/03_join_queries.sql`
**Screenshot:** `screenshots/join_query_1.png`

### JOIN 2 — Order Items and Products

**Purpose:** Shows the products in each order together with their category, price, and quantity.

**Result:** 30 order items were returned.

**Business use:** Helps the supermarket see which products customers are buying and in what quantities.

**SQL:** `sql/03_join_queries.sql`
**Screenshot:** `screenshots/join_query_2.png`

### JOIN 3 — Customers and Their Orders

**Purpose:** Shows all customers, including customers who have not placed an order.

**Result:** 16 rows were returned. Patrick Tuyisenge appears with `NULL` order information because he has no orders.

**Business use:** Helps identify both customers who are buying and customers who have not yet purchased anything.

**SQL:** `sql/03_join_queries.sql`
**Screenshot:** `screenshots/join_query_3.png`

## 5. CTE Query

### Customers Above Average Spending

**Purpose:** Calculates the total amount spent by each customer and finds customers whose spending is above the average.

**Result:** 4 customers were above the average spending.

**Business use:** Helps identify customers who contribute a higher amount of sales.

**SQL:** `sql/04_cte_query.sql`
**Screenshot:** `screenshots/cte_query.png`

## 6. Window Functions

### Window Function 1 — Customer Spending Rank

**Purpose:** Ranks customers according to their total spending.

**Result:** 5 customers with orders were ranked. The highest spending in this dataset was 48,000.

**Business use:** Helps compare customer spending.

**SQL:** `sql/05_window_queries.sql`
**Screenshot:** `screenshots/window_function_1.png`

### Window Function 2 — Order Number

**Purpose:** Numbers each customer's orders from the first order to the latest order.

**Result:** 15 orders were numbered.

**Business use:** Helps understand repeat purchases by each customer.

**SQL:** `sql/05_window_queries.sql`
**Screenshot:** `screenshots/window_function_2.png`

### Window Function 3 — Running Revenue

**Purpose:** Calculates the running total of revenue as orders are made over time.

**Result:** 15 orders were included, with total revenue reaching 198,800.

**Business use:** Helps track how revenue increases over time.

**SQL:** `sql/05_window_queries.sql`
**Screenshot:** `screenshots/window_function_3.png`

### Window Function 4 — Days Between Orders

**Purpose:** Finds the number of days between a customer's current order and previous order.

**Result:** 10 rows were returned for customers who placed multiple orders.

**Business use:** Helps understand how often customers return to make purchases.

**SQL:** `sql/05_window_queries.sql`
**Screenshot:** `screenshots/window_function_4.png`

## 7. Challenges and Solutions

**Running multiple SQL statements:**
I initially used the normal run option for multiple statements. I learned to use **Run Script (F5)** when running a complete SQL script.

**Understanding JOIN results:**
The `LEFT JOIN` returned more rows than the number of customers because customers with multiple orders appeared more than once. This helped me understand how the relationship between customers and orders affects the result.

**Calculating spending:**
Customer spending required combining data from several tables. I used JOINs and a CTE to calculate the totals.

## 8. Conclusion
This assignment helped me practice SQL JOINs, CTEs, and window functions using a supermarket database. It also helped me understand how SQL can be used to get useful information from business data.

This assignment helped me practice SQL JOINs, CTEs, and window functions using a supermarket database. It also helped me understand how SQL can be used to get useful information from business data.
