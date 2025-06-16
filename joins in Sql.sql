select * from employee;
select * from department;

insert into employee(empid,empname,emailid,contact,age,country,salary)
values(16,'TEST','test@gmail.com',7654398,26,'UK',29000);

# inner join--->join 2 or more tables,based on common column & only matched records will be fetched.

insert into department values(126,'Development');
select e.empid,e.empname,e.contact,e.emailid,e.salary,d.deptid,d.deptname
from employee e
inner join department d on d.deptid=e.deptid;

select employee.empname,department.deptname
from employee
inner join department on department .deptid=employee.deptid;

select e.*,d.deptname
from employee e
inner join department d on d.deptid=e.deptid;

# left join---> all records from left table & matched records from right table,unmatched record will be display as null.

select e.*, d.deptname
from employee e
left join department d on d.deptid=e.deptid;


# right join--->all records from right side table & matched records from left side table & unmatched will be display as Null

select e.*, d.deptname
from employee e
right join department d on d.deptid=e.deptid;

-- Q 1]display department with max number of employees
select d.deptname,count(e.empid) as 'total emp'
from employee e
inner join department d on d.deptid=e.deptid
group by d.deptname
order by 'total emp'
limit 1;

-- Q2] departments having  employee with same salary
select d.deptname 
from employee e
inner join department d on d.deptid=e.deptid
group by d.deptid,e.salary
having count(e.empid)>1;

--  Q 3]display total employee with deptname
select d.deptname, count(e.empid) as 'total emp'
from employee e
left join department d on d.deptid=e.deptid
group by d.deptname;


# self join

alter  table employee add managerid int;
update employee set managerid=1 where empid=2;
update employee set managerid=2 where empid in (3,4,5);
update employee set managerid=3 where empid in (1,6,7,8,9);
update employee set managerid=8 where empid=10;
update employee set managerid=1 where empid in (12,23,14,15);

select e.empname as'empname',m.empname as 'manager'
from employee e,employee m
where e.managerid=m.empid;

# 5] cross join---> one column from a table ,performs  combination with each records in another table is cross join'
create table colors
(
product varchar(20),
colorsname varchar(20),
price float,
colorid int
);
drop table colors;

insert into colors values ('shirt','black',200,1),
('shirt','yellow',200,2),
('shirt','white',200,3),
('shirt','red',200,4),
('shirt','pink',200,5),
('shirt','blue',200,6),
('shirt','orange',200,7);

insert into colors values ('T-shirt','black',500,101),
('T-shirt','YELLOW',400,102),
('T-shirt','white',200,103),
('T-shirt','red',300,104),
('T-shirt','pink',300,105),
('T-shirt','blue',200,106),
('T-shirt','orange',200,107);
delete from colors where colorsname='black';

create table size
(
prodsize varchar(20),
colorid int
);
insert into size values ('M',101),
('M',102),
('M',103),
('L',104),
('XL',105),
('XXL',106),
('XXL',102);
insert into size values ('M',1),
('M',2),
('M',3),
('L',4),
('XL',5),
('XXL',6),
('XXL',7);

select * from colors cross join size;