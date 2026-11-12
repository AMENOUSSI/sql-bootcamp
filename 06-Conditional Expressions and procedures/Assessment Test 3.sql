-- Teachers table
CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(50) NOT NULL,
	department VARCHAR(60) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	phone VARCHAR(50) NOT NULL UNIQUE
	
	
);
-- Student table
CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(50) NOT NULL,
	phone VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(50) NOT NULL UNIQUE,
	graduation_year DATE NOT NULL
);

ALTER TABLE students
ALTER COLUMN graduation_year TYPE SMALLINT
USING EXTRACT(YEAR FROM graduation_year)::SMALLINT;

ALTER TABLE teachers
ALTER COLUMN email DROP NOT NULL;
-- Inserting into students table

INSERT INTO students(
	first_name,
	last_name,
	homeroom_number,
	phone,
	email,
	graduation_year)
VALUES
	(
	'Mark','Watney','5','777-555-1234','','2035'
	)

SELECT * FROM students

INSERT INTO teachers(
	first_name,
	last_name,
	homeroom_number,
	department,
	email,
	phone)
VALUES(
	'Jonas','Salk','5','Biology','jsalk@school.org','777-555-4321'
);

SELECT * FROM teachers