CREATE TABLE sales.companies
(
	company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255) NOT NULL,
PRIMARY KEY (company_id)
); 

--
-- TO CHANGE COLUMN NOT NULL WITHOUT DROPING THE TABLE
ALTER TABLE sales.companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

--
-- MODIFY COLUMN OF THE TABLE
ALTER TABLE sales.companies
MODIFY company_name VARCHAR(255) NULL; 

