USE sql_store;
DESCRIBE order_items;
SELECT * FROM order_items;
DESCRIBE products;
SELECT * FROM products;
ALTER TABLE order_items
ADD COLUMN total_price decimal(10,2) NOT NULL;
UPDATE order_items SET total_price = unit_price * quantity WHERE order_id = 6;
SELECT * FROM order_items
JOIN products ON order_items.product_id=products.product_id
WHERE order_id = 6 AND total_price > 30;
SELECT name FROM products WHERE quantity_in_stock IN (49,38,72);