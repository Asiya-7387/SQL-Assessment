SELECT * FROM sqlpractice1.employee;

-- DQL(DATA QUERY LANGUAGE)
-- select-->fetch the data from DB
-- syntax-->select< col name> from < table name>
select * from employee;
select empname,emailid,country from employee;

-- distinct--->unique(e.g)-countries)
select distinct country from employee;

-- operators(=,<,<=,>,>=,<>-not equal)
select *
from employee
where age<>34;

-- between and-->fetch the data between given range
select * from employee
where age between 27 and 30;

-- in operator-->(select multiple possible match values)
select * from employee 
where country in('india','japan','Qatar');

select * from employee
where deptid in(121,122);


-- not in operator-->(skip the multiple possible match values)
select * from employee 
where country  not in('india','japan','Qatar');

select * from employee
where age not in (34,22);

-- and operator-->fetch emp  from india country whose age is 27.
select * from employee where country='India'and age=27;

-- or operator
select * from employee where country='India' or age=34;

-- not operator--->is used to skip record
select * from employee where not country='japan';

-- like clause--> is used to match the given pattern for string data & matched record will be fetched.

-- name start with r and any number of characters

select * from employee where empname like 'r%';

-- name end with  r
select * from employee where empname like '%r';

-- name contains letter s
select * from employee where empname like '%s%';

-- name start with a or r
select * from employee where empname like '[ar]%';

-- name end with a or r
select * from employee where empname like'[%ar]';

-- name contains a or r
select * from employee where empname like'[%ar]%';

-- name start with range a to g
select * from employee where empname like '[ag]% ';

-- name end with range a to g
select * from employee where empname like '%[a-g]';

-- name contains with range a to g
select * from employee where empname like '%[a-g]%';

-- Null values-->operator can not work with null values

update employee set country=null where empid=12;

-- is null-->to select null values
select * from employee where country is null;

-- not null-->to skip the null values
select * from employee where country is not null











