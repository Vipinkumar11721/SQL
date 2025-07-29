select *from employees3;

--select salary >=50k and age >=40  using AND operator
select *from employees3
where salary >50000 and age>=40;

--select salary >=50k and age >=40  using OR operator
select *from employees3
where salary >50000 or age>=90;

--select all department except IT  using NOT operator
select *from employees3
where not (department ='IT');