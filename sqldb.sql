create database sqlpractice1;
use sqlpractice1;

-- drop table
drop table student;

-- student table
create table student
(
rollno int,
studName varchar(20),
percentage float,
courseid int
);
---------------------------------------------------------------------------------
-- alter
  -- alter command is used to do modifiacation in the existing table alter.(modification)
  
-- add column 
alter table student add age int;
alter table student add deptid int;
alter table student add courseid int;

-- modify datatype & size
alter table student modify column studName varchar(30);
-- MS-SQL server alter

--  rename the column
alter table student rename column percentage to percen; 

-- drop the column
alter table student drop column age;

-- apply constraint to a column
alter table student add constraint pk_emp primary key(rollno);
alter  table student add constraint fk_emp_dept foreign key(deptid) references department(deptid);

-- remove the constraints of a column
alter table student drop primary key ;
alter table student drop foreign key fk_emp_dept;

------------------------------------------------------------------------------------------------
-- product table
create table product 
 (
 code int,
name varchar(20),
price float
);

-- department table
create table department
(
deptid int,
deptname varchar(20) not null,
constraint pk_dept primary key(deptid)
);


-- employee table
create table employee
(
empid int,
empname varchar(30)not null,
emailid varchar(40),
contact int,
deptid int,
age int,
country varchar(20) default('india'),
unique(emailid,contact),
constraint pk_emp primary key(empid),
constraint fk_dept foreign key(deptid) references department(deptid),
constraint chk_age check(age>=18)
);
create index on Employee(empid,emaiid);

-- author table,book table(refer author id in book)
-- apply pk,fk,unique,check(price) on book table

create table author
(
authorid int,
authorname varchar(20) not null,
constraint pk_auth primary key(authorid)
);

create table book
(
bookid int,
bookname varchar(20),
price  float,
authorid int,
publisher varchar(20),
unique(bookname,publisher),
constraint pk_book primary key(bookid),
constraint fk_author foreign key(authorid) references author(authorid),
constraint chk_price check(price>=1000)
);

-- create database  test and remove drop command
create database test;
drop database test;

-------------------------------------------------------------------------------------------------------------
-- insert command- add new record
-- insert value in department table
insert into department values(121,'HR'),(122,'SALES'),(123,'Admin'),(124,'testing'),(125,'marketing');
truncate table department;
truncate table employee;
-- insert value in employee table
truncate table employee;
insert into employee (empid,empname,emailid,contact,deptid,age)
values(1,'RAJ','raj@gmail.com',98776654,122,24);
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(2,'suraj','suraj@gmail.com',87654398,121,27,'Qatar');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(3,'kishor','kishor@gmail.com',889654398,123,34,'south africa');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(4,'Rahul','rahul@gmail.com',99654398,122,30,'japan');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(5,'sanju','sanju@gmail.com',87654398,124,27,'uk');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(6,'aarav','aarav@gmail.com',78547678,125,27,'shrilanka');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(7,'akshay','akshay@gmail.com',8896498,123,25,'london');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(8,'sonali','sonali@gmail.com',8896398,124,28,'nepal');
insert into employee(empid,empname,emailid,contact,deptid,age)
values(9,'amol','amol@gmail.com',8876398,122,23);
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(10,'amar','amar@gmail.com',876598,121,34,'japan');
insert into employee(empid,empname,emailid,contact,deptid,age)
values(11,'sonu','sonu@gmail.com',8654398,125,27);
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(12,'komal','komal@gmail.com',8896398,121,34,'nepal');
insert into employee(empid,empname,emailid,contact,deptid,age,country)
values(13,'amit','amit@gmail.com',7654398,123,26,'chin');