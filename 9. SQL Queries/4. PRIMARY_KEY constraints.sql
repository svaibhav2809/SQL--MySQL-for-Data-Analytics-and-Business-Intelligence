CREATE TABLE sales.sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);

-- 
CREATE TABLE sales.customers
(
	customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY (customer_id)
);

--
CREATE TABLE sales.items
(
	item_code VARCHAR(10),
    item VARCHAR(255),
    unit_price NUMERIC (10,2),
    company_id VARCHAR(255),
PRIMARY KEY(item_code)
);

--
CREATE TABLE sales.companies
(
	company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255),
PRIMARY KEY (company_id)
); 