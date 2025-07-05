Create database Capstone_project

Use Capstone_project

--Case Scenario 1
select * from [KMS Sql Case Study1]
--1. which product category had the highest sales?
select Product_Category, Sales from [KMS Sql Case Study1]
where sales = (select max(sales) from [KMS Sql Case Study1])

--2. what are the top three and bottom three region in terms of sales
select top 3 region, SUM(sales) as totalsales from [KMS Sql Case Study1]
GROUP BY Region
ORDER BY totalsales 

select top 3 region, SUM(sales) as totalsales from [KMS Sql Case Study1]
GROUP BY Region
ORDER BY totalsales 

---3. what were the total sales of appliances in ontario
select SUM(sales) as totalsales from [KMS Sql Case Study1]
where Region = 'Ontario'

----4. Advise the management of KMS on what to do to increase the revenue from the bottom
10 customers
select Top 10 * from [KMS Sql Case Study1]
order by profit
---- I will advise KMS Management to offer sales promotions to boost the volume of sales and develop customer service and support.

-----5. KMS incurred the most shipping cost using which shipping method?
select shipping_Cost,ship_mode from [KMS Sql Case Study1]
where shipping_Cost =(select Max(shipping_Cost) as Max_shipping_Cost from [KMS Sql Case Study1])

------6. Who are the most valuable customers, and what products or services do they typically purchase
select Top 5 Profit, Sales, Product_Name, customer_Name
from [KMS Sql Case Study1]
order by Profit 

-------7. . Which small business customer had the highest sales?
select Top 1 Customer_Name, SUM(sales) as totalsales
from [KMS Sql Case Study1]
where Customer_Segment = 'Small Business'
Group by Customer_Name
order by totalsales DESC

--------8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
Select Top 1 Customer_Name, COUNT(ORDER_ID) as order_count
from [KMS Sql Case Study1]
where Customer_Segment = 'Corporate'
Group by Customer_Name
order by order_count DESC

---------9. Which consumer customer was the most profitable one?
Select Top 1 Customer_Name, SUM(Profit) as Total_Profit
from [KMS Sql Case Study1]
where Customer_Segment = 'Consumer'
Group by Customer_Name
order by Total_Profit DESC

-----------11. If the delivery truck is the most economical but the slowest shipping method andExpress Air is the fastest but the most expensive one, do you think the companyappropriately spent shipping costs based on the Order Priority? Explain your answe
Select ship_mode, Order_Priority,Shipping_Cost,order_Date, Ship_Date from [KMS Sql Case Study1]
Order by Shipping_Cost DESC

------The Company does not spend shipping cost base on priority, its ramdomly from this data, the shipping some are high and the shipping costs are low.
