-- Task-1 : create a report of all state sales, quantity, discount , profit  with following aggregation ,(sum , avg, min , max, count)
select * from customer

select * from sales

select * from product

select c.state as customer_state,sum(s.sales) as sales_sum,avg(s.quantity) as sales_quantity,min(s.sales) as min_sales,max(s.quantity) as Max_quantity,
	sum(s.discount) as sales_discount,min(s.discount) as min_discount,sum(s.profit) as sales_profit,max(s.profit) as sales_profit,
count(s.quantity) as count_quantity from sales as s
inner join customer as c
on s.customer_id=c.customer_id
group by c.state
order by c.state

-- Task-2 : get data of all state and city's avg customer age sql query
select * from customer
	
select c.state as customer_state, c.city as customer_city,avg(c.age) as avg_customer_age from customer as c
group by city,state
order by city,state

-- Task-3 : get data of 2017 to 2018  with product name and sales per quantity 
select * from sales
select * from product	
	
select p.product_name,sum(s.sales)/sum(s.quantity) as sales_per_quantity, s.order_date from sales as s
inner join product as p
on s.product_id=p.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by p.product_name, s.order_date
order by p.product_name, s.order_date




