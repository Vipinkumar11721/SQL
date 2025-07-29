CREATE TABLE employee2 (
       employee_id INT PRIMARY KEY,
	   NAME VARCHAR(100),
	   POSITION VARCHAR(50),
	   DEPARTMENT VARCHAR(50),
	   HIRE_DATE DATE,
	   SALARY NUMERIC(10,2)
);


SELECT * FROM employee2;



INSERT INTO employee2(employee_id,name,position,department,hire_date,salary)
          VALUES (1,'Ajit Sharma','Data Analyst','Data Science','2022-06-09',65000.00),
		         (2,'Priya Desai','Software Engineer','Human Resources','2021-09-20',75000.00),
				 (3,'Sneha Patel','HR Manager','IT','2019-03-08',84000);

DELETE FROM employee2
WHERE employee_id=2;


ALTER TABLE employee2
DROP COLUMN salary;


DROP TABLE IF EXISTS employee2;

DROP DATABASE IF EXISTS company;







				 