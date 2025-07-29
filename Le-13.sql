DROP TABLE IF EXISTS employees3;

--Create the employee table

CREATE TABLE employees3(
    employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	SALARY NUMERIC(10,2),
	joining_date DATE,
	age INT
);
SELECT * FROM employees3;

