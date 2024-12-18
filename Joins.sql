#JOINS in SQL

create database sql_joins;

show databases;

use sql_joins;

create table cricket(cricket_id int auto_increment, name varchar(30),primary key(cricket_id));

create table football(football_id int auto_increment, name varchar(30),primary key(football_id));

insert into cricket(name)
values ('Stuart'),('Michael'),('Johnson'),('Hayden'),('Fleming');

select * from Cricket;

insert into football(name) 
values ('Stuart'),('Michael'),('Johnson'),('Langer'),('Astle');

select * from Football;

#Students both are part of football and cricket team using inner join

select * from cricket as c inner join
football as f on c.name=f.name;





