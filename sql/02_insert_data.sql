-- Sunrise Supermarket Assignment One
-- Step 2: Insert Data
-- DBMS: Oracle Database 21c

-- Customers
INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (1, 'Aline Mukamana', 'aline.mukamana@gmail.com', 'Kigali');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (2, 'Eric Niyonzima', 'eric.niyonzima@gmail.com', 'Huye');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (3, 'Diane Uwase', 'diane.uwase@gmail.com', 'Musanze');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (4, 'Jean Bosco Habimana', 'jean.habimana@gmail.com', 'Rubavu');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (5, 'Claudine Ingabire', 'claudine.ingabire@gmail.com', 'Kigali');

INSERT INTO customers (customer_id, customer_name, email, city)
VALUES (6, 'Patrick Tuyisenge', 'patrick.tuyisenge@gmail.com', 'Nyanza');


-- Products
INSERT INTO products (product_id, product_name, category, price)
VALUES (1, 'Bread', 'Bakery', 1500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (2, 'Milk', 'Dairy', 1200);

INSERT INTO products (product_id, product_name, category, price)
VALUES (3, 'Cheese', 'Dairy', 4500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (4, 'Rice', 'Grains', 2500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (5, 'Sugar', 'Grains', 1800);

INSERT INTO products (product_id, product_name, category, price)
VALUES (6, 'Cooking Oil', 'Cooking', 5500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (7, 'Biscuits', 'Snacks', 2000);

INSERT INTO products (product_id, product_name, category, price)
VALUES (8, 'Juice', 'Beverages', 2500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (9, 'Coffee', 'Beverages', 3500);

INSERT INTO products (product_id, product_name, category, price)
VALUES (10, 'Tea', 'Beverages', 2200);


-- Orders
INSERT INTO orders (order_id, customer_id, order_date)
VALUES (1, 1, DATE '2026-09-01');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (2, 2, DATE '2026-09-02');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (3, 3, DATE '2026-09-03');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (4, 1, DATE '2026-09-05');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (5, 4, DATE '2026-09-06');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (6, 5, DATE '2026-09-08');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (7, 2, DATE '2026-09-10');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (8, 3, DATE '2026-09-11');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (9, 1, DATE '2026-09-13');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (10, 4, DATE '2026-09-14');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (11, 5, DATE '2026-09-15');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (12, 2, DATE '2026-09-16');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (13, 3, DATE '2026-09-17');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (14, 4, DATE '2026-09-18');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (15, 5, DATE '2026-09-19');


-- Order Items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (1, 1, 1, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (2, 1, 2, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (3, 2, 4, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (4, 2, 5, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (5, 3, 3, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (6, 3, 7, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (7, 4, 6, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (8, 4, 8, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (9, 5, 9, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (10, 5, 10, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (11, 6, 1, 4);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (12, 6, 3, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (13, 7, 4, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (14, 7, 6, 1);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (15, 8, 2, 4);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (16, 8, 8, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (17, 9, 5, 5);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (18, 9, 7, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (19, 10, 6, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (20, 10, 9, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (21, 11, 1, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (22, 11, 10, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (23, 12, 3, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (24, 12, 4, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (25, 13, 8, 4);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (26, 13, 9, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (27, 14, 5, 3);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (28, 14, 6, 2);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (29, 15, 7, 4);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES (30, 15, 2, 3);

COMMIT;
