-- Create employee 3 table
create table employee3(
employee_id serial primary key,
first_name varchar(50),
last_name varchar(50),
department_id int
);

--Insert data in employee 3 table
insert into employee3(first_name,last_name,department_id)
values
      ('Rahul','Sharma',101),
	  ('Priya','Mehta',102),
	  ('Ankit','Verma',103),
	  ('Simran','Kaur',Null),
	  ('Aman','Singh',101);

select * from employee3	;  

-- Create Departments Table
create table departments(
department_id int primary key,
department_name varchar(50)
);


--Insert data in Departments table
insert into departments(department_id, department_name)
values
      (101,'Sales'),
	  (102,'Marketing'),
	  (103,'IT'),
	  (104,'HR');

select *from departments;


-- 1. Inner joins - 
              --Retrive employees3 and their department names where a match exists.
			  select e.employee_id,e.first_name,e.last_name,
			  d.department_id, department_name
			  from employee3 e
			  inner join
			  departments d
			  on e.department_id=d.department_id;

--2. Left joins-
               --Retrive employees3 and their department namesincluding those without a department.
			     select e.employee_id,e.first_name,e.last_name, 
				 d.department_name
				 from employee3 e
			      left join
			      departments d
			       on e.department_id=d.department_id;


--3. Right joins-
               --Retrive all department and the employees3 working in them including department without .
			     select e.employee_id,e.first_name,e.last_name, 
				 d.department_name
				 from employee3 e
			      right join
			      departments d
			       on e.department_id=d.department_id;
				 				 

			









