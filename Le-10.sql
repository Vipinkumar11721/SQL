

CREATE TABLE student (
   student_id SERIAL PRIMARY KEY,
   student_name VARCHAR(50) NOT NULL,
   email VARCHAR(100) UNIQUE,
   age INTEGER CHECK (age>=18),
   city VARCHAR(50)
);

DROP TABLE student;

SELECT * FROM student;

-- Insert the values into the table.
INSERT INTO STUDENT (student_name,email,age,city)
VALUES ('Vijay','vijar@gmail.com',40,'Ramnagar'),
       ('Sonu','sonu@gmail.com',30,'Siddharthnagar'),
	   ('Ravi','ravi@gmail.com',49,'Jaunpur'),
	   ('Chandra','chandra@gmail.com',30,'Rampur'),
	   ('Vk','vk@gmail.com',20,'Rampur');



	   SELECT student_id,student_name FROM student;


	   UPDATE student 
	   SET age=26
	   WHERE student_name='Vijay';


	   SELECT * FROM student;


	   SELECT * FROM student ORDER BY student_id ASC;

	   UPDATE student 
	   SET city='Chennai'
	   WHERE age>=30;


       UPDATE student 
	   SET age=31,city='Delhi'
	   WHERE student_name ='Sonu';

       UPDATE student 
	   SET age = age+1
	   WHERE age>=30;


--Rename the Student_name column to full_name
ALTER TABLE student
RENAME COLUMN student_name TO full_name;
	   
--to change datatype INT to SMALLINT
ALTER TABLE student
ALTER COLUMN age TYPE SMALLINT;


SELECT * FROM students;

--TO Add a not null constraint to city column
ALTER TABLE student 
ALTER COLUMN city SET NOT NULL;

--adding check constraints to age column

ALTER TABLE student
DROP CONSTRAINT age;

ALTER TABLE student
ADD CONSTRAINT age CHECK(age>=18);


--rename the table name student to students
ALTER TABLE student 
RENAME TO students;








	   