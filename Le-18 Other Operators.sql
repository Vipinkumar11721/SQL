select * from employees3;

--Q1 Find employees where the email column is null (if applicable).



--Q2 List employees stored by salary in Desending order.

  select first_name, last_name,salary
  from employees3
  order by salary DESC;

--Q3 Retrive the top 5 highest-paid employees.
   select first_name, last_name,salary
  from employees3
    order by salary DESC
  limit 5;

--Q4 Retrive a list of unique departments
 
  select distinct department 
  from employees3;






