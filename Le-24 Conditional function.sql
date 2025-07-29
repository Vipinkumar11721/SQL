/* 1. CASE function - Categories based on conditions
We will categories products into price range:

Expensive if the price is greater than or equal to 50000.
Moderate if the price is between 10000 and 49999.
Affordable if the price is less than 10000.
*/


select product_name,price,
     case 
         when price>=50000 then 'Expensive'
         when price>=10000 and price<=49999 then 'Moderate'
		 else  'Affordable'
      end as price_category
	  from products;

	 