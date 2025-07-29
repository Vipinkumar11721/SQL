
select * from products;
/*  Assignment
  We will perform product based on quantity available
  1. In stock if quantity is 10 or more.
  2. Limited stock if quantity is b/w 5 & 9.
  3. Out of stock soon if quantity is less than 5.
*/
  
select product_name,quantity,
     case 
         when quantity>=10 then 'In stock'
         when quantity>5 and quantity<=9 then 'Limited stock'
		 else  'Out of stock'
      end as quantity_category
	  from products;



/* 
Check if category name contains 'Electronic item' or 'Furnitur item' or 'Accessory item' using like
*/
	  select product_name,category,
	        case
		    when category like 'Electronics%' then 'Electronic item'
			when category like 'Furniture%' then 'Furniter item'
			else 'Accessory item'
			end as category_status
	  from products;
			