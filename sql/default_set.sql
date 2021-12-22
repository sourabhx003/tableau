USE sales;

CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_addres VARCHAR(255),
    gender ENUM('M','F'),
    number_of_complaints INT DEFAULT 0,
    PRIMARY KEY(customer_id)
);
-- DROP TABLE customers;

INSERT INTO customers(first_name,last_name,gender)
VALUES ("SOURABH","SINGH","M");

SELECT * FROM customers;

DROP TABLE customers;


CREATE TABLE customers
(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    gender ENUM("M","F"),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY(customer_id),
    UNIQUE KEY(email_address)
);

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT;

DROP TABLE customers;