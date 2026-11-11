CREATE VIEW customer_info AS
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer_id = address.address_id;

-- Grab From the view
SELECT * FROM customer_info

-- Add new column to the view


CREATE OR REPLACE VIEW customer_info AS
SELECT first_name,last_name,address,district FROM customer
INNER JOIN address
ON customer_id = address.address_id;

SELECT * FROM customer_info

-- Altering view
ALTER VIEW customer_info RENAME TO c_info

SELECT * FROM c_info

-- Drop a view
DROP VIEW IF EXISTS customer_info