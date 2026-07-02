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

select category,round(sum(sales),2)as total_sales
from sales_analysis_demo
group by category;

select category,round(sum(profit),2)as total_profit
from sales_analysis_demo
group by category;

select state,round(avg(sales),2)as avg_sales
from sales_analysis_demo
group by state;

select region,round(sum(quantity),2)as total_quanity
from sales_analysis_demo
group by region;

select ship_mode,round(sum(sales),2)as total_ship_mode
from sales_analysis_demo
group by ship_mode;

select state,count(Order_ID)as total_orders
from sales_analysis_demo
group by state;

select Customer_Name,count(order_id)as total_orders
from sales_analysis_demo
group by customer_name;

select sub_category,round(sum(sales),2)as total_sales
from sales_analysis_demo
group by sub_category;

select 
	year(order_date)as order_year,
    round(sum(sales),2)as total_Sales
from sales_analysis_demo
group by year(order_date)
order by order_year;

select Category,round(sum(sales),2)as sales_greater_than_50000
from sales_analysis_demo
group by Category
having sum(sales)>5000
order by Category desc;

select state,count(order_id)as total_order
from sales_analysis_demo
group by state
having count(order_id)>10;

select Customer_Name,sum(sales)as spending_money
from sales_analysis_demo
group by Customer_Name
having sum(sales)>3000;

select region,round(avg(profit),2)as avg_profit
from sales_analysis_demo
group by region
having avg(profit)>20;

select product_name,count(Product_Name)as sold_product
from sales_analysis_demo
group by product_name
having count(Product_Name)>1;

