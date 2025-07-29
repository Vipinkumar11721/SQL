 select *from employee3;

 select *from departments;

--4. Full outer join-
               --Retrive all employee3 and department table ,including non matching records from both tables.
			    select e.employee_id,e.first_name,e.last_name, 
				 d.department_name
				 from employee3 e
			      full outer join
			      departments d
			       on e.department_id=d.department_id;

--5. Cross join-
          --Retrive all possible combinations of Employee3 and departments.
		    select e.employee_id,e.first_name,e.last_name, 
				 d.department_name
				 from employee3 e
			      cross join
			      departments d;s

--6. Self join-
	     --	Find Employee3 who share the same department.
		    select e1.first_name as employee_name1,
			       e2.first_name as employee_name2,
				   d.department_name
			from employee3 e1 join employee3 e2
			on e1.department_id = e2.department_id 
			and e1.employee_id!=e2.employee_id
			join
			departments d
			on e1.department_id = d.department_id ;












