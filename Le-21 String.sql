select *from products;

--use uppercase in categories column

select upper(category) as category_in_capital
from products;

--use lowercase in categories column

select lower(category) as category_in_small
from products;

--join product and category text with hypen
select concat(product_name,'-',category) as product_details
from products;


--Extract the first 5 charectors from product name
select substring (product_name,1,5)as short_name
from products;

--count length
select product_name, length(product_name)as count_of_char
from products;

--remove leading and trailing space from string
select length (trim ('monitor')) as trimed_text;
select length  ('monitor   ') as trimed_text;

--Replace function
select replace(product_name,'phone','device') as update_name
from products;

--select the first three charector from category
select left(category,3) as category_capital
from products;


--select the last three charector from category
select right (category,3) as category_capital
from products;






