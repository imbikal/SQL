# Select Statement

use sql_intro;

show Tables;

select * from employees;

select emp_name, city, salary from employees
where salary < (select avg(salary) from employees);

# Update subquery

create table products
(product_id int, item varchar(30), selling_price float,product_type varchar (30));

insert into products 
values
(1, 'Laptop', 899.99, 'Electronics'),
(2, 'Running Shoes', 120.50, 'Footwear'),
(3, 'Smartphone', 699.99, 'Electronics'),
(4, 'Backpack', 49.99, 'Accessories'),
(5, 'Wireless Earbuds', 59.99, 'Electronics');

select * from products;

create table orders
(order_id int,product_sold varchar(30),selling_price float); 

insert into orders 

select product_id, item, selling_price
from products where product_id in
(select product_id from products where selling_price > 200);

select * from orders






