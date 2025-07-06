Create database KMSProject_db

-------IMPORT CSV FILE INTO DB------

-----[KMS Sql Case Study].CSV

select * from [KMS Sql Case Study]

-------Question 1 product Category that had the highest sales------


select top 1 product_category, Sum(sales) As total_sales
From [KMS Sql Case Study]
Group by product_category
Order by total_sales Desc


------Question 2 top 3 regions interms of sales-----

select top 3 Region, 
sum(sales) as total_sales from [KMS Sql Case Study]
group by Region 
order by Total_sales Desc;

--------- bttom 3 region----------
select top 3 Region, 
sum(sales) as total_sales from [KMS Sql Case Study]
group by Region 
order by Total_sales Asc;

---------Question 3--------
------ what were the total sales of applians in ontario-----
select Region,
sum(sales) as Total_sales 
from [KMS Sql Case Study]
where product_sub_category ='appliances' and province = 'ontario'
group by Region

-------Question (4)  from Advise the managment team of kms on what to do to increase the revenuethe bottom 10 customers-----


Select top 10 customer_name, SUM(sales) AS total_sales
from [KMS Sql Case Study]
Group by customer_name
Order by total_sales Asc

-------Question [5] Kms incured the most shipping cost using which shipping method

SELECT top 1 ship_mode, SUM(shipping_cost) AS total_shipping_cost
FROM [KMS Sql Case Study]
GROUP BY ship_mode
ORDER BY total_shipping_cost DESC

--------Question [6] Who are the most valuable customers, and what products do they typically purchase
-------the {3} most valuable customers

SELECT top 3 customer_name,SUM(sales) AS total_sales,SUM(profit) AS total_profit
FROM [KMS Sql Case Study]
GROUP BY customer_name
ORDER BY total_sales DESC 

-----what products do they typically buy---

select top 3 customer_name,product_name,Sum(sales) AS total_sales,Sum(Order_quantity) AS total_quantity
From [KMS Sql Case Study]
Where customer_name IN (
    select customer_name
    from [KMS Sql Case Study]
    Group by customer_name
	Order by sales Desc);


--------Question [7] which small business customer had the highest sales ---------

SELECT top 1 customer_name, SUM(sales) AS total_sales
FROM [KMS Sql Case Study]
WHERE customer_segment = 'Small Business'
GROUP BY customer_name
ORDER BY total_sales DESC

-------Question [8] which corporate customer placed the most number of order in 2009-2012

SELECT top 1 customer_name,
    Count(Distinct order_id) AS number_of_orders
From [KMS Sql Case Study]
Where customer_segment = 'Corporate'
  AND order_date BETWEEN '2009-01-01' AND '2012-12-31'
Group by customer_name
Order by number_of_orders Desc

------- Question [9] which consumer customer was the most profitable one -------

SELECT top 1 customer_name, SUM(profit) AS total_profit
from [KMS Sql Case Study]
Where customer_segment = 'Consumer'
Group by customer_name
Order by total_profit Desc


------Question [10] which customer returned items and what sedment do they belong to-----

select Distinct customer_name, customer_segment
From [KMS Sql Case Study]
Where profit < 0 OR order_quantity < 0;

------ Question [11] if the delivery truck is the most economical but the slowest shipping method and express air is the faster but the most expensive one, do you think the company appropriately spent shipping costs based on the order priority? explain your answer 
SELECT 
    row_id,
    order_id,
    order_date,
    ship_date,
    DATEDIFF(day, order_date, ship_date) AS delivery_days,
    ship_mode,
    shipping_cost
FROM [KMS Sql Case Study];
SELECT
    CASE
        WHEN DATEDIFF(day, order_date, ship_date) <= 2 THEN 'Urgent'
        WHEN DATEDIFF(day, order_date, ship_date) BETWEEN 3 AND 5 THEN 'Normal'
        ELSE 'Slow'
    END AS delivery_speed_category,
    ship_mode,
    COUNT(*) AS num_orders,
    AVG(shipping_cost) AS avg_shipping_cost
FROM [KMS Sql Case Study]
GROUP BY
    CASE
        WHEN DATEDIFF(day, order_date, ship_date) <= 2 THEN 'Urgent'
        WHEN DATEDIFF(day, order_date, ship_date) BETWEEN 3 AND 5 THEN 'Normal'
        ELSE 'Slow'
    END,
    ship_mode
ORDER BY delivery_speed_category, ship_mode;

