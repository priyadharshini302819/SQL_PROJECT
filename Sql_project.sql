CREATE DATABASE SqlProject;
USE SqlProject;


CREATE TABLE Sales(sale_id int,product_id int,quantity_sold int,sale_date date ,total_price int);
INSERT INTO Sales VALUES(1,101,5,'2024-01-01',25000.00);
INSERT INTO Sales VALUES(2,102,3,'2024-01-02',900.00);
INSERT INTO Sales VALUES(3,103,2,'2024-01-02',60.00);
INSERT INTO Sales VALUES(4,104,4,'2024-01-03',80.00);
INSERT INTO Sales VALUES(5,105,6,'2024-01-03',90.00);

CREATE TABLE Product(product_id int,product_name varchar(20),category varchar(20),unit_price int);
INSERT INTO Product VALUES(101,'laptop','electronics',500.00);
INSERT INTO Product VALUES(102,'smartphone','electronics',300.00);
INSERT INTO Product VALUES(103,'headphone','electronics',30.00);
INSERT INTO Product VALUES(104,'keyboard','electronics',20.00);
INSERT INTO Product VALUES(105,'mouse','electronics',15.00);
 SELECT*FROM Sales;
 SELECT*FROM Product;
 -- Highest avg unit price
SELECT category, AVG(unit_price) AS avg_price FROM Product GROUP BY category ORDER BY avg_price DESC LIMIT 1;
-- total  sale exceeding 30
SELECT product_name FROM Product WHERE unit_price NOT IN (SELECT unit_price FROM Product WHERE unit_price=30);

-- count no of sale made by each month 
SELECT MONTH(sale_date) AS sale_month,COUNT(*) AS total_sales FROM Sales GROUP BY MONTH(sale_date) ORDER BY sale_month;

-- Retrive the sales details for product with smart in their product
SELECT * FROM Sales WHERE product_id =(SELECT product_id FROM Product WHERE product_name like 'smart%');

-- Determine the avg quantity sold for product with unique price greater than 100
SELECT AVG(quantity_sold) as avg_quantity_sold FROM Sales WHERE product_id in (SELECT product_id FROM Product WHERE unit_price >100); 







