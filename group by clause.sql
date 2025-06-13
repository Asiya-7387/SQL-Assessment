SELECT * FROM sqlpractice1.employee;
-- Group by clause in SQL
-- group-collection of similar data/record/set of record
-- Group by statement groups/set/collect rows that have same value into a summary
-- Group of countrirs ,city,age
-- Group by can be use with aggregate function

-- Q] count employee by country
select country ,count(empid) as 'count'
from employee
group by country;

-- count employee by age
select age,count(empid) as 'count'
from employee
group by age;

-- count employee by salary
select salary ,count(empid) as 'count'
from employee
group by salary;

-- avg salary by country
select country,avg(salary) as 'avg salary'
from employee
group by country;

-- avg salary by age
select age ,avg(salary) as 'avg salary'
from employee
group by age;

-- minimum salary by age
select age,min(salary) as 'avg salary'
from employee
group by age;

-- max age by country
select country ,max(age) as 'oldest age'
from employee
group by country

