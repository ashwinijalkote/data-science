create database firstdb;
drop database firstdb;
show databases;


use firstdb; # or set as default schema by right clicking on db and select set as default schema or double clik db;
create table student (
id int,
sname char(10),
percentage float
);

show tables;

create table employee(
id int,
ename char(10),
salary float
);

drop table employee;

show tables;

insert into student values
(1, 'e1','10000');

insert into student values
(4, 'e1',78.9),
(3, 'e2', 90);

select * from student;
update student 
set percentage=86.8 where id=1;

update student 
set sname='s5' where id=5;

delete from student where id=5;





