SELECT * FROM sqlpractice1.employee;

-- as clause - to create column alias
select empname as 'employee name' from employee;
select empname as 'employee name',empid as 'employee id' from employee;

-- limiting the rows
-- limit can be used in mysql to set the limitation on the retriving records
select empid,empname from employee limit 8; -- fetch the first 8 records
select empid,empname from employee limit 2,8; -- skip  first 2 records & then next 8 records fetch

-- sort the value  using order by 
select * from employee order by empname;
select * from  employee order by age;
select * from employee order by empid;
select * from employee order by age desc,empname;

-- exact match-
-- name start with r and contains 4 letter(underscore),to define each letter we will use underscore

select * from employee where empname like 'r____';
select * from employee where empname like '__o__';
select * from employee where empname like '_____v';
select * from employee where empname like '_o___';
select * from employee where empname like '____u';
select * from employee where empname like '__h__';

select * from employee where empname like '__h__';

alter table employee add salary float;
update employee set salary=23000 where empid in(1,2);
update employee set salary=24000 where empid=3;
update employee set salary=25000 where empid=4 ;
update employee set salary=26000 where empid in(5,6);
update employee set salary=27000 where empid=7 ;
update employee set salary=29000 where empid in(8,9);
update employee set salary=33000 where empid=10;

-- aggregate function in sql
-- sum,max,min,avg,count

-- count to find total records
-- * indicates all rows
select count(* ) as 'total employee' from employee;
select count(empid) as 'total employee' from employee;

-- sum of salary
select sum(salary) as 'total salary'from employee;
select sum(age) as 'total salary'from employee;

-- avg of salary

select avg(salary) as 'avg salary' from employee;

-- what is min salary

select min(salary) as 'min salary' from employee;
select min(age) as 'min age' from employee;

-- what is max salary

select max(salary) as 'max salary' from employee;
select max(age) as 'max age' from employee


