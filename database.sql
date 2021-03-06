CREATE TABLE categories (id INT(2) PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20)
NOT NULL);
CREATE TABLE stocks (id INT(7) PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)
NOT NULL, quantity INT(7) DEFAULT 0, category INT(2) NOT NULL, unit_price INT(7) NOT NULL,
image VARCHAR(15) NOT NULL, FOREIGN KEY (category) REFERENCES categories(id));
CREATE TABLE users (id INT(7) PRIMARY KEY AUTO_INCREMENT, email VARCHAR(50) NOT NULL,
username VARCHAR(20) NOT NULL, password TEXT, admin TINYINT DEFAULT 0, phone_number VARCHAR(15),
first_name VARCHAR(30) NOT NULL, middle_name VARCHAR(30) NOT NULL, last_name
VARCHAR(30) NOT NULL, shipping_address TEXT);
CREATE TABLE orders (id INT(7) PRIMARY KEY AUTO_INCREMENT, user_id INT(7),
items VARCHAR(10), total_price INT(7) NOT NULL, status INT(1) DEFAULT 0,
shipping_address TEXT , additional_message TEXT);
