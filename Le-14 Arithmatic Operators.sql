select * from employees3;


--Q1 Retrive the first name ,salary , and calculate a 10% bonus on the salary?
Answer
      select first_name,salary,
	  (salary*0.10) as Bonus
      from employees3;

--Q2 Calculate the annual salary and salary incriment by 5% . Show the monthly new salary as well?
Answer
      select first_name, salary, 
	  (salary*12) as Annual_salary,
	  (salary*0.05) as Incriment_salary,
	  salary + (salary*0.05) as New_salary,
	  (salary*1.05) as new_salary2
	  from employees3;
	  