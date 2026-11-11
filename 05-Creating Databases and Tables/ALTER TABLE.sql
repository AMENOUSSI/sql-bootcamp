CREATE TABLE information(
info_id SERIAL PRIMARY KEY,
title VARCHAR(500) NOT  NULL,
person VARCHAR(50) NOT  NULL UNIQUE

);

-- Altering the table name
ALTER TABLE information
RENAME TO new_info;

SELECT * FROM new_info;

ALTER TABLE new_info
RENAME COLUMN person TO people;

INSERT INTO new_info(title)
VALUEs
('Some new title');

ALTER TABLE new_info
AlTER COLUMN people DROP NOT NULL;

