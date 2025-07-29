CREATE TABLE STUDENT (
	STUDENT_ID SERIAL PRIMARY KEY,
	STUDENT_NAME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(100) UNIQUE,
	AGE INTEGER CHECK (AGE >= 18),
	CITY VARCHAR(50)
);

DROP TABLE STUDENT;

SELECT
	*
FROM
	STUDENT;

-- Insert the values into the table.
INSERT INTO
	STUDENT (STUDENT_NAME, EMAIL, AGE, CITY)
VALUES
	('Vijay', 'vijar@gmail.com', 40, 'Ramnagar'),
	('Sonu', 'sonu@gmail.com', 30, 'Siddharthnagar'),
	('Ravi', 'ravi@gmail.com', 49, 'Jaunpur'),
	('Chandra', 'chandra@gmail.com', 30, 'Rampur'),
	('Vk', 'vk@gmail.com', 20, 'Rampur');

SELECT
	STUDENT_ID,
	STUDENT_NAME
FROM
	STUDENTS;

UPDATE STUDENT
SET
	AGE = 26
WHERE
	STUDENT_NAME = 'Vijay';

SELECT
	*
FROM
	STUDENT;

SELECT
	*
FROM
	STUDENT
ORDER BY
	STUDENT_ID ASC;

UPDATE STUDENT
SET
	CITY = 'Chennai'
WHERE
	AGE >= 30;

UPDATE STUDENT
SET
	AGE = 31,
	CITY = 'Delhi'
WHERE
	STUDENT_NAME = 'Sonu';

UPDATE STUDENT
SET
	AGE = AGE + 1
WHERE
	AGE >= 30;