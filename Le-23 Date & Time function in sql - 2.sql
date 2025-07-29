

--6. Date_part() - get specific date part
-- Extract the day of the week from added_date.

select product_name,added_date,
 date_part ('month',added_date) as day_of_week
 from products;


 --7. Date trunca() - turncate date to precision.
 -- Turncate added date to the start of the month.
 select product_name,added_date,
       date_trunc('week',added_date) as week_start,
	    date_part ('isodow',added_date) as day_of_week
	   from products;

--8. interval - add or subtract time interval
-- Add 6 month to the added date

select product_name,added_date,
     added_date + interval '6 days' as new_date
	 from products;

--9. current_time() get current time
-- Retrive only the current time.

select current_time as current_time;

--10 TO_DATE() - convert String to date
-- Cnvert a string to a date format.
select to_date('28-11-2024','dd-mm-yyyy') as converted_date;








	   