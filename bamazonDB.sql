DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    item_id VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(45) NOT NULL,
    price INTEGER(11) NOT NULL,
    stock_quantity INTEGER(11) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Toy", "Optimus Prime", "Transformers", 20, 10)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Tires", "Goodyear", "Auto", 110, 10)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Pens", "Bic", "Office Supplies", 5, 50)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VAlUES ("BBQ", "Kingsford Grill", "Outdoor", 100, 5)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Wood", "2x4x8 Beams", "Construction", 10, 100)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Fence", "4x4x12 Treated Timber", "Lumber", 10, 100)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Paper", "Copy Paper", "School Supplies", 3, 50)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Cereal", "Lucky Charms", "Breakfast", 5, 100)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Milk", "Hiland Skim", "Dairy", 3, 100)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("Computer", "Asus", "Laptop", 500, 20)
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES ("TV", "Samsung", "Home", 900, 10)