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

select 
	year(order_date)as years,
    count(order_date)as count_years
from sales_analysis_demo
group by year(order_Date);

select 
	month(order_date)as mothns,
    count(order_date)as count_months
from sales_analysis_demo
group by month(order_date)
order by month(order_date);

select 
	day(order_Date)as days,
    count(order_Date)as total_days
from sales_analysis_demo
group by day(order_date)
order by day(order_Date);

select 
	month(order_date),
    round(sum(sales),2)as monthly_sales
from sales_analysis_demo
group by month(order_date)
order by month(order_Date);

select 
	year(order_date)as years,
    round(sum(profit),2)as yearly_profit
from sales_analysis_demo
group by year(order_date)
order by year(order_date);

select
	quarter(order_date)as quarters,
    round(sum(sales),2)as total_sales
from sales_analysis_demo
group by quarter(order_date)
order by quarter(order_date);

select
	weekday(order_date)as weekend_orders,
    round(count(order_date),2)as total_orders
from sales_analysis_demo
group by weekday(order_date)
order by weekday(order_date);

select order_id,
		order_Date,
        ship_date,
        datediff(ship_date,order_date)as shipping_time
from sales_analysis_demo;

select 
avg(datediff(ship_date,order_Date))as avg_shipping_time
from sales_analysis_demo;

select 
max(datediff(ship_date,order_date))as max_shipping_time
from sales_analysis_demo;

update sales_analysis_demo
set
	Customer_Name = upper(Customer_Name);
    
select * from sales_analysis_demo
where Postal_code = 42420;

select Row_id,
		Order_ID,
        Ship_Date,
        Customer_Name,
        Product_ID,
        Quantity,
        Discount,
        Profit
from sales_analysis_demo
where Order_date between '2014-01-01' and '2015-01-01';


select *,
	sum(Profit) over(order by Row_id)as cumulative_sum
from sales_analysis_demo;

select *,
case when Profit > 0 then 'profit' else 'Loss' end Profit_and_loss
from sales_analysis_demo;

select Product_Name,sales,Discount,
case when sales < 100 then 'Low' 
when sales between 100 and 500 then 'Medium'
when sales > 500 then 'High'
end Sales_category
from sales_analysis_demo;

select Product_Name,
		Sales,
        Quantity,
        Discount,
        Profit
        ,
case 
		when Discount < .0 then 'No Discount' 
        when Discount <= .3 then 'Low Discount'
        when Discount > .3 then 'High Discount'
        end Discount_status
from sales_analysis_demo;

select Product_Name,
		Sales,
        Quantity,
        Discount,
        Profit,
case 
when Quantity < 3 then 'Low' 
when Quantity < 7 then 'Medium'
when Quantity >= 7 then 'High'
end Quantity_level
from sales_analysis_demo;

select Customer_Name,
		Sales as above_avg_sales
from sales_analysis_demo
where sales > (select avg(sales)from sales_analysis_demo);

select Product_Name,
		profit
from sales_analysis_demo 
where profit = (select max(profit)from sales_analysis_demo);

select state , sales
from sales_analysis_demo
where sales > (select avg(sales)from sales_analysis_demo);

select product_name,discount
from sales_analysis_demo
where discount = (select min(discount) from sales_analysis_demo);

select product_name,sales as second_highest_sale
from sales_analysis_demo
where sales = (select max(sales)from sales_analysis_demo
				where sales < (select max(sales)from sales_analysis_demo));

select sales from sales_analysis_demo
order by sales desc
limit 2 ;

select product_name,
		round(sum(sales),2)as rank_sales,
	rank() over(order by sum(sales) desc)as sales_rank
from sales_analysis_demo
group by product_name;

select Customer_Name ,
		round(sum(profit),2)as total_profit,
        dense_rank() over(order by sum(profit) desc)as dens_rank
from sales_analysis_demo
group by Customer_Name;

select state,
	row_number() over(order by profit desc)as state_rank
from sales_analysis_demo;

select Customer_Name,
		Country,
        sales,
        round(sum(sales) over(order by Row_id desc),2)as running_total_sales
from sales_analysis_demo;

select Customer_Name,
		Country,
        sales,
        round(sum(profit) over(order by row_id),2)as runnig_total
from sales_analysis_demo;

select Customer_Name,
		Country,
        sales,
        round(avg(sales) over(order by row_id desc),2)as moving_avg
from sales_analysis_demo;

select * 
from(
	select product_name,category,sum(sales)as total_sales,
    dense_rank() over(partition by category order by sum(sales) desc)as top_3
    from sales_analysis_demo
    group by product_name,category
)
as rank_table
where top_3 <= 3
order by category,top_3;

select * from sales_analysis_demo;

select order_date,ship_date,Discount,profit,quantity
from sales_analysis_demo
where order_date between '2014-01-01' and '2015-01-01' and Discount = 0.0;

select order_date,
month(Order_date)
from sales_analysis_demo;