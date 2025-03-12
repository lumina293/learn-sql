USE coffee_store;

SHOW tables;

SELECT * FROM products;

INSERT INTO products (name, price, coffee_origin)
VALUES ('Espresso', 2.50, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES ('Macchiato', 3.0, 'Brazil'), ('Cappuccino', 3.50, 'Costa Rica');

UPDATE products
SET coffee_origin = 'Sri Lanka'
WHERE id = 3;


SET sql_safe_updates = false;

UPDATE products
SET price = 3.25, coffee_origin = 'Sri Lanka'
WHERE name = 'Macchiato';

UPDATE products
SET coffee_origin = 'Colombia'
WHERE coffee_origin = 'Sri Lanka';

UPDATE products
SET coffee_origin = 'Colombia';

SELECT * FROM customers;

INSERT INTO customers (first_name, gender, last_name)
VALUES ('Lee', 'M', 'Ja'), ('Pi', 'F', 'Kia'), ('Ji', 'M', 'Li');

UPDATE customers
SET first_name = 'Mi'
WHERE first_name = 'Ji';

DELETE FROM customers
WHERE gender = 'M';

DELETE FROM customers
WHERE last_name = 'Ki';

DELETE FROM customers
WHERE last_name = 'Kia';