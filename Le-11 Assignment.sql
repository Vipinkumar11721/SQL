--Here's the SQL Code to Create a table for the assignment:

      -- TABLE : EMPLOYEE INFORMATION
--Drop the table if it already exist

DROP TABLE IF EXISTS employees;

--Create the employee table

CREATE TABLE EMPLOYEES(
    EMPLOYEE_ID SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10,2) CHECK(SALARY>0),
	JOINING_DATE DATE NOT NULL,
	AGE INT CHECK (AGE>=18)
);

SELECT * FROM EMPLOYEES;


--INSERT SOME SAMPLE DATA INTO THE EMPLOYEES TABLE
--INSERT DATA INTO EMPLOYEES TABLE


INSERT INTO EMPLOYEES (FIRST_NAME,LAST_NAME,DEPARTMENT,SALARY,JOINING_DATE,AGE)
VALUES('AMIT','SHARMA','IT',60000,'2022-05-02',29),
      ('NEHA','PATEL','HR',55000,'2021-03-02',32),
	  ('RAVI','KUMAR','FINANCE',70000,'2020-03-10',35),
	  ('ANJALI','VERMA','IT',65000,'2019-11-22',28),
	  ('SURESH', 'REDDY','OPERATOR',50000,'2023-01-10',26);
      


--PRACTICE ASSIGNMENT QUESTIONS WITH SOLUTION.

--Q.1-> RETRIVE ALL EMPLOYEES FIRST_NAME AND THEIR DEPARTMENT.
--ANSWER->
           SELECT FIRST_NAME , DEPARTMENT FROM EMPLOYEES;

--Q.2->UPDATE THE SALARY OF ALL EMPLOYEE IN THE 'IT' DEPARTMENT BY INCREASING IT BY 10%.
--ANSWER->
          UPDATE EMPLOYEES
		  SET SALARY = SALARY+(SALARY*10/100)
		  WHERE DEPARTMENT='IT';

--Q.3->DELETE ALL EMPLOYEE WHOES ARE OLDER THAN 34 YEARS.
--ANSWER->
          DELETE FROM EMPLOYEES
          WHERE AGE>=34;



--Q4: Add a new column `email` to the `employees` table.
--ANSWER->
         ALTER TABLE employees
         ADD COLUMN email VARCHAR(100);



--Q5: Rename the `department` column to `dept_name`.
--ANSWER->
          ALTER TABLE employees
          RENAME COLUMN department TO dept_name;

          SELECT * FROM employees;
--Q6: Retrieve the names of employees who joined after January 1, 2021.

SELECT first_name, last_name, joining_date FROM employees
WHERE joining_date > '2021-01-01';


--Q7: Change the data type of the `salary` column to `INTEGER`.

ALTER TABLE employees 
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

--Q8: List all employees with their age and salary in descending order of salary.

SELECT first_name, age, salary FROM employees 
ORDER BY salary DESC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)

INSERT INTO employees(first_name, last_name, dept_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);
		
--Q10: Update age of employee +1 to every employee 

UPDATE employees
SET age=age+1;
		  


























