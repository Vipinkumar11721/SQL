select * from employees3;

--Q1 Retrive employees whoes salary is b/w 40000 and 60000 use BETWEEN Operators
   select * from employees3
   where salary between 40000 and 60000;

--Q2 Find employees whoes email addresses end with @gmail.com -use LIKE Operators
   select * from employees3
  -- where email LIKE '%@gmail.com';
  where first_name like 'A%';
   

--Q3 Retrive employees whoes belong to either the 'finance' or 'marketing' departments - use IN Operators
   select * from employees3
   where department in ('Finance','Marketing');
   

