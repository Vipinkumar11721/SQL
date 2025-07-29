select *from employees3;

--matches age 30
select * from employees3
where age =30;


--matches all except 30
select * from employees3
where age !=30;

--salary greater than 50k
select first_name,salary from employees3
where salary >50000;


--salary less than 50k
select first_name,salary from employees3
where salary<50000;