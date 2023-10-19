CREATE TABLE sales.customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id),
UNIQUE KEY (email)
);

-- TO ADD UNIQUE KEY WITHOUT DROPING THE TABLE
ALTER TABLE customers
ADD UNIQUE KEY (email);

-- REMOVE UNIQUE KEY IN TABLE 
ALTER TABLE customers
DROP  INDEX email;