CREATE TABLE sales.customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);
 
-- change column Constraints in table
ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

-- REMOVE DEFAULT in TABLE
ALTER TABLE customers
ALTER COLUMN number_of_complaints DROP DEFAULT; 	 