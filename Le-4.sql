SELECT * FROM employee1;


INSERT INTO employee1(name,position,department,hire_date,salary)
          VALUES ('Ajit Sharma','Data Analyst','Data Science','2022-06-09',65000.00),
		         ('Priya Desai','Software Engineer','Human Resources','2021-09-20',75000.00),
				 ('Sneha Patel','HR Manager','IT','2019-03-08',84000);


				 
ALTER TABLE employee1
RENAME COLUMN position TO post;

TRUNCATE TABLE employee1;


TRUNCATE TABLE employee1 RESTART IDENTITY;


ALTER TABLE employee1
DROP COLUMN department;


DROP TABLE IF EXISTS employee1;


DROP TABLE IF EXISTS employee3;