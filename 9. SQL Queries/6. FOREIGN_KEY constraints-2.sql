CREATE TABLE sales.sales
(
	purchase_number INT AUTO_INCREMENT,
    date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(10),
PRIMARY KEY (purchase_number)  
); 
 
 
-- TO ADD FOREIGN KEY WITHOUT DROPING THE TABLE  
ALTER TABLE sales.sales
ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,

-- REMOVE FOREIGN KEY IN TABLE 
ALTER TABLE sales.sales
DROP FOREIGN KEY sales_ibfk_1;