select * from sales_analysis_demo;

select distinct Category
from sales_analysis_demo;

select distinct State
from sales_analysis_demo;

select * from sales_analysis_demo
limit 10;

select Product_ID,Product_Name,State
from sales_analysis_demo
where state = 'California';

select * from sales_analysis_demo
where sales > 1000;

select product_name,Quantity
from sales_analysis_demo
where Quantity > 5;

select * from sales_analysis_demo
where Discount = 0;

select Customer_id,Customer_Name,state
from sales_analysis_demo
where state = 'Texas';

select * from sales_analysis_demo
where Category = 'Furniture';

select * from sales_analysis_demo
where Category = 'Technology';

