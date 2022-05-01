// this is practice code that was made from the sqlitonline.com

//CREATING TABLES and INSERTING DATA

CREATE TABLE customers (
	id INT NOT NULL,
  	first_name STRING,
  	last_name STRING,
  	address STRING,
  	PRIMARY KEY (id)
)

CREATE TABLE products (
	id INT NOT NULL,
  	name STRING,
  	price MONEY, stock INT,
  	PRIMARY KEY (id)
)

CREATE TABLE orders (
	id INT NOT NULL,
  	order_number INT,
  	customer_id INT,
  	product_id INT,
  	PRIMARY KEY (id),
  	FOREIGN KEY (customer_id) REFERENCES customers(id),
  	FOREIGN KEY (product_id) REFERENCES products(id)
)


//How to use Foreign Keys and Inner Joins

SELECT orders.order_number, customers.first_name, customers.last_name, customers.address
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id


// How to add or delete data in your tables
ALTER TABLE products
ADD stock INT

ALTER TABLE products
DROP stock INT
