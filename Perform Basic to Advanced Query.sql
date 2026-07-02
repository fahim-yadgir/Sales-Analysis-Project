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

select Product_Name ,sales,Quantity,discount, Profit
from sales_analysis_demo
where Profit < 0;

select * from sales_analysis_demo
where sales between 500 and 1000;

select Customer_Name
from sales_analysis_demo
where Customer_Name like 'a%';

select Product_Name
from sales_analysis_demo
where Product_Name like '%chair';

select * from sales_analysis_demo
where Region = 'East';

select * from sales_analysis_demo
where ship_mode = 'second class';

select * from sales_analysis_demo
where Ship_Date like '2016%';

select * from sales_analysis_demo
order by Sales desc;

select * from sales_analysis_demo
order by profit asc;

select * from sales_analysis_demo
order by sales desc
limit 20;

select *,
	rank() over(order by sales desc)as top_20
from sales_analysis_demo
limit 20;

select profit
from sales_analysis_demo
order by Profit asc 
limit 10;

select * from sales_analysis_demo
order by Quantity desc;

select sum(sales)as total_sales
from sales_analysis_demo;

select sum(profit)as total_profit
from sales_analysis_demo;

select avg(sales)as avg_sales
from sales_analysis_demo;

select max(profit)as max_profit
from sales_analysis_demo;

select min(profit)as min_profit
from sales_analysis_demo;

select sum(quantity)as total_quantity
from sales_analysis_demo;

select count(order_id)as total_orders
from sales_analysis_demo;

select distinct count(Customer_Name)
from sales_analysis_demo;

select avg(discount)as avg_discount
from sales_analysis_demo;

select max(sales)as max_sales
from sales_analysis_demo;