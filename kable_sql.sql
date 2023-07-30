 --query 1
 select "Marital Status", 
 	AVG(age) as AverageAge  
 from kable_cust 
 group by "Marital Status" ;

--query 2
--Gender : 0 Wanita, 1 Pria
select gender,  
	AVG(age) as AverageAge
from kable_cust 
group by gender;

--query 3
select kable_str.storename,
	sum(kable_trns.qty) as qtyterbanyak
from kable_str
join kable_trns  on kable_trns.storeid  = kable_str.storeid 
group by kable_trns.storeid , storename 
order by qtyterbanyak desc
limit 1;

--query 4
select kable_prod."Product Name",
	sum(kable_trns.totalamount) as produkterlaris
from kable_prod
join kable_trns  on kable_trns.productid  = kable_prod.productid 
group by kable_trns.productid , "Product Name" 
order by produkterlaris desc
limit 1;
