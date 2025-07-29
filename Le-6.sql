CREATE TABLE users (
   user_id INT PRIMARY KEY,
   name VARCHAR(50) NOT NULL,
   email VARCHAR(100) UNIQUE,
   age INTEGER CHECK (age>=18),
   reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (user_id,name,email,age)
VALUES (1,'VIPIN KUMAR','VK132@GMAIL.COM',20),
      (5,'RAVI','RAVI123@GMAIL.COM',25);

INSERT INTO users (user_id,name,email,age)
 VALUES (6,'vk','vk123@gmail.com',28);

SELECT * FROM users;


DELETE FROM users
WHERE user_id=5;
