create database retail;
use retail;

# tot rows in our data set 
select count(*)from sales;

# tot number of orders
select count(order_date) from sales;

# total revenue (before discounts)
select sum(cost_price*quantity) as total_R from sales;

# total revenue (after discounts)
SELECT SUM((cost_price - discount) * quantity) AS total_R
FROM sales;

# top 5 selling products
select product_id, sum(quantity) as tot_quantity from sales
group by product_id 
 order by tot_quantity 
 desc 
 limit 5;

# tot sales by region
select sum(sale_price*quantity) as tot_sales, region from sales			# as we have sale_price is per unit. so, to get the tot sale_price by row we have to * by quantity
group by region
order by tot_sales;

# find the most popular ship mode
select ship_mode, count(*) as count from sales 			#count(*) counts how many each times each ship mode appears
group by ship_mode
order by count desc
limit 1;

# the top 5 cities with the highest sales
select city, count(*) as num_sales,						# number of sales transactions in each city
 sum(sale_price*quantity) as tot_sales 					# tot revenue generated per city
from sales
group by city
order by tot_sales desc
limit 5;

# the average discount given per category
select category, avg(discount) as avg_discount					# avg_discount per unit
from sales
group by category
order by avg_discount;

# the most profitable product categories
select category, sum(profit*quantity) AS tot_profit from sales
group by category
order by tot_profit desc;
