create database sales;
use sales;

select * from `sales analysis demo`;

alter table `sales analysis demo`
rename sales_analysis_demo;

alter table sales_analysis_demo
rename column `ï»¿Row ID` to Row_id;

alter table sales_analysis_demo
rename column `Order ID` to Order_ID;

alter table sales_analysis_demo
rename column `Order Date` to Order_Date;

alter table sales_analysis_demo
rename column `Ship Date` to Ship_Date;

alter table sales_analysis_demo
rename column `Ship Mode` to Ship_Mode;

alter table sales_analysis_demo
rename column `Customer ID` to Customer_id;

alter table sales_analysis_demo
rename column `Customer Name` to Customer_Name;

alter table sales_analysis_demo
rename column `Postal Code` to Postal_Code; 

alter table sales_analysis_demo
rename column `Product ID` to Product_ID; 

alter table sales_analysis_demo
rename column `Sub-Category` to Sub_Category; 

alter table sales_analysis_demo
rename column `Product Name` to Product_Name; 

select * from sales_analysis_demo;