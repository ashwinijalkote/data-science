
use classicmodels;
desc customers;
select * from customers;

select * from customers 
order by creditLimit desc limit 5;  # skip 1 and show 5

select customerName from customers 
order by creditLimit desc limit 5 offset 1;  # skip 1 and show 5

select * from customers
order by creditLimit desc limit 1 offset 3; # 4th highest
 
select * from customers
order by creditLimit asc limit 5; 

select * from customers
order by creditLimit desc limit 5; 
 
select * from customers
where creditLimit != 0
order by creditLimit asc limit 5; 

select * from customers 
where country='Australia'
order by creditLimit desc limit 2 offset 2;

select * from customers
where country in ('USA', 'UK', 'Spain')
order by creditLimit desc limit 5;

select distinct(status) from orders;

select * from orders 
where status in ('Shipped', 'Cancelled', 'In Process');

select * from customers
where creditLimit between  0 and 50000;

select * from products 
where buyPrice between 30 and 50;

select country from customers 
where country like 'Aus%';

select * from customers
where contactFirstName like 's%';

select * from customers
where contactLastName like '%i';

select * from customers
where contactFirstName like 'a%n'; 


desc customers;
desc employees;
desc offices;
desc orderdetails;
desc orders;
desc payments;
desc productLines;
desc products;

create table department (
depid varchar(10) not null,  
dname varchar(20), 
primary key(depid));

create table employee (
empid varchar(10), 
ename varchar(20), 
Salary float, 
depid varchar(10) default null, 
foreign key(depid) references department(depid)
);

insert into department values
('D1', 'HR'),
('D2', 'Engineering');

insert into employee values
('E1', 'abcd', 10000, 'D1'),
('E2', 'a1', 20000, 'D1');

# subqueries
# create employee and department table and insert values into table.
# find out min, max, avg salary from empolyee table.
# find out emplyee details whose salary is min salary
# 
select min(salary), max(salary), avg(salary) from employee;
select * from employee where salary = (select min(Salary) from employee);

# find out emplyee details whose salry is greater than average salary 
select * from employee 
where salary > (select avg(Salary) from employee);