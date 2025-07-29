DROP TABLE IF EXISTS employees2;

--Create the employee table

CREATE TABLE employees2(
    employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	SALARY NUMERIC(10,2),
	joining_date DATE,
	age INT
);
SELECT * FROM employees2;

copy
employees2(employee_id, first_name,	last_name,	department,	salary,	joining_date,	age)
FROM 'C:\Users\Vipin Kumar\Desktop\Vk\SQL\employee_data.csv'
DELIMITER ','
CSV HEADER;