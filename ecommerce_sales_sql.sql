CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
CREATE TABLE ecommerce_sales (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    discount DECIMAL(5,2),
    quantity INT,
    payment_method VARCHAR(30),
    order_date DATETIME,
    delivery_time_days INT,
    region VARCHAR(30),
    returned VARCHAR(10),
    total_amount DECIMAL(12,2),
    shipping_cost DECIMAL(10,2),
    profit_margin DECIMAL(10,2),
    customer_age INT,
    customer_gender VARCHAR(20)
);
select count(*) from ecommerce_sales;
select * from ecommerce_sales;

-- How many unique customers have placed orders
select count(distinct customer_id) from ecommerce_sales;

-- What are all the unique product categories
select count(distinct product_id) from ecommerce_sales;

-- How many orders are there in each category
select category,count(*) as Total_orders
from ecommerce_sales
group by category
order by Total_orders desc;

-- What is the total revenue generated from all orders
select sum(price*quantity) as total_revenue
from ecommerce_sales;

-- What is the average order value
select (sum(price*quantity)/count(*)) as average_value
from ecommerce_sales;

-- What is the total quantity of products sold in each category
select category, sum(quantity) as total_sum
from ecommerce_sales
group by category
order by total_sum desc;

-- Which 5 categories generate the highest total revenue
select category, 
sum(price*quantity)as total_revenue_category
from ecommerce_sales
group by category
order by total_revenue_category desc
limit 5;

-- What is the average discount given for each category
select category, avg(discount) as avg_discount
from ecommerce_sales
group by category;

-- Which region generates the highest revenue
select region, sum(price*quantity) as revenue_region
from ecommerce_sales
group by region
order by revenue_region desc
limit 1;

-- Which categories have an average profit margin greater than 30
select category, 
avg(profit_margin) as avg_profitMargin
from ecommerce_sales
group by category
having avg_profitMargin > 30;

-- How many orders were returned vs not returned
select returned,
count(*) as total_orders
from ecommerce_sales
group by returned;

-- What is the total revenue generated in each year
select year(order_date) as order_year,
sum(price*quantity) as total_revenue
from ecommerce_sales
group by order_year
order by order_year;

-- Which payment method has the highest total revenue
select payment_method , 
sum(price*quantity) as total_revenue
from ecommerce_sales
group by payment_method
order by total_revenue desc;

-- Top 5 customer by total spending
select customer_id,
sum(total_amount) as total_spending
from ecommerce_sales
group by customer_id
order by total_spending desc;

-- Which categories have high revenue but below-average profit margin
with category_performance as (
select category,
sum(price*quantity) as total_revenue,
avg(profit_margin) as avg_profit_margin
from ecommerce_sales
group by category
)
select *
from category_performance
where avg_profit_margin < (
select avg(profit_margin)
from ecommerce_sales
)
order by total_revenue desc;

-- What is the monthly revenue trend
select 
  year(order_date) as order_year,
  month(order_date) as order_month,
  sum(price*quantity) as monthly_revenue
  from ecommerce_sales
group by
  year(order_date),
  month(order_date)
order by 
  order_year,
  order_month;
  
-- What percentage of orders are returned in each category
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(
        CASE
            WHEN returned = 'Yes' THEN 1
            ELSE 0
        END
    ) AS returned_orders,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN returned = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS return_rate
FROM ecommerce_sales
GROUP BY category
ORDER BY return_rate DESC;
  
-- Rank customers based on there total spendings
select 
  customer_id,
   total_spending,
    rank() over
    ( order by total_spending desc)
    as customer_rank
from (
    select
       customer_id,
       sum(total_amount) as total_spending
       from ecommerce_sales
       group by customer_id
       ) as customer_sales
order by customer_rank;

-- Top 3 customers in each category
with customer_category_sales as (
select category,
       customer_id,
       sum(total_amount) as total_spending
       from ecommerce_sales
       group by category , customer_id
),
ranked_customers as (
   select 
     category,
     customer_id,
     total_spending,
     row_number() over(
      partition by category
      order by total_spending desc
	) as customer_rank
from customer_category_sales
)
select category,
       customer_id,
       total_spending,
       customer_rank
	from ranked_customers
    where customer_rank <= 3
    order by category, customer_rank;
       

select * from ecommerce_sales;







