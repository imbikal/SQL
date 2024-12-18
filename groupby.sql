#Group_By_in_Sql

show databases;

use sql_intro;

show tables;

create table employees (Emp_Id int primary key, Emp_name varchar(25), Age int, Gender char (1), Date_joined date,
Dept varchar(20), City varchar (15), Salary int);

describe employees;

insert into employees values
(101, 'Amit Sharma', 29, 'M', '2020-01-15', 'HR', 'Delhi', 45000),
(102, 'Priya Singh', 34, 'F', '2018-07-12', 'Finance', 'Mumbai', 60000),
(103, 'Rahul Verma', 26, 'M', '2021-03-20', 'IT', 'Bangalore', 52000),
(104, 'Sneha Rao', 31, 'F', '2019-10-10', 'HR', 'Chennai', 47000),
(105, 'Rajesh Gupta', 28, 'M', '2022-05-08', 'Sales', 'Kolkata', 43000),
(106, 'Anjali Mehta', 25, 'F', '2021-09-17', 'Marketing', 'Delhi', 40000),
(107, 'Karan Kapoor', 36, 'M', '2017-12-01', 'Finance', 'Mumbai', 67000),
(108, 'Pooja Iyer', 27, 'F', '2022-03-15', 'IT', 'Hyderabad', 54000),
(109, 'Abhishek Jain', 30, 'M', '2019-04-23', 'HR', 'Pune', 48000),
(110, 'Ritika Arora', 29, 'F', '2020-11-05', 'Sales', 'Delhi', 46000),
(111, 'Vikram Malhotra', 40, 'M', '2015-06-18', 'Management', 'Mumbai', 95000),
(112, 'Neha Saxena', 33, 'F', '2018-01-10', 'Finance', 'Chennai', 62000),
(113, 'Arjun Pillai', 26, 'M', '2021-07-30', 'IT', 'Bangalore', 50000),
(114, 'Meera Joshi', 32, 'F', '2019-03-11', 'Marketing', 'Pune', 45000),
(115, 'Suresh Reddy', 29, 'M', '2020-08-19', 'Sales', 'Hyderabad', 47000),
(116, 'Divya Kapoor', 28, 'F', '2022-02-25', 'HR', 'Kolkata', 43000),
(117, 'Manoj Singh', 37, 'M', '2016-09-14', 'Management', 'Delhi', 90000),
(118, 'Aisha Khan', 31, 'F', '2019-12-20', 'Finance', 'Mumbai', 58000),
(119, 'Ravi Chandra', 26, 'M', '2021-05-09', 'IT', 'Bangalore', 51000),
(120, 'Simran Das', 35, 'F', '2017-10-03', 'Marketing', 'Delhi', 62000);

select * from employees;

select distinct dept from employees;

select avg(age) from employees;

#using group by function

select dept, round(avg(age),1) as average_age from employees group by dept;

select dept, sum(salary) as total_salary from employees group by dept;

select distinct city from employees;

select year(Date_joined) as year, count(emp_id) from employees group by year(Date_joined);

create table sales(product_id int, sell_price float, quantity int, state varchar(20));

insert into sales values
(1, 25.5, 10, 'California'),
(2, 15.0, 20, 'Texas'),
(3, 40.0, 5, 'Florida'),
(4, 12.5, 15, 'New York'),
(5, 30.0, 8, 'Nevada'),
(6, 50.0, 12, 'Arizona'),
(7, 18.0, 25, 'Oregon'),
(8, 22.0, 30, 'Washington'),
(9, 60.0, 7, 'Georgia'),
(10, 35.0, 9, 'Illinois');

select * from sales;

select product_id, sum(sell_price*quantity) as revenue from sales group by product_id;

#Joining Two Tables

create table c_product (product_id int,cost_price float);

insert into c_product
values(1,270.0),
(2,200); 

select c.product_id,sum((s.sell_price - cost_price) * s.quantity) as profit from sales as s inner join 
c_product as c
where s.product_id = c.product_id
group by c.product_id;

# Using having clause 

select * from employees;

select Emp_name, Sum(Salary) as total_salary from employees group by Emp_name having sum(Salary) > 50000;

select city, sum(salary) as total 
from employees
group by city
having sum(salary) > 150000;

select dept, count(*) as emp_count
from employees
group by dept
having count(*) > 2;

#Using where

select city, count(*) as emp_count
from employees
where city!= "Mumbai"
group by city
having count(*) > 2;




